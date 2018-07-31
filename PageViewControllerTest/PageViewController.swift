//
//  PageViewController.swift
//  PageViewControllerTest
//
//  Created by Shigeo Sakamoto on 2018/07/30.
//  Copyright © 2018年 Shigeo Sakamoto. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    var vc: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        for index in 0...11 {
            let transformVC = storyboard?.instantiateViewController(withIdentifier: "transform")
            transformVC?.restorationIdentifier = String(index)
            vc.append(transformVC!)
        }

        self.setViewControllers([vc[0]], direction: .forward, animated: true, completion: nil)

        self.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {

        guard let index = Int(viewController.restorationIdentifier!) else {
            return vc[0]
        }

        if index == vc.count - 1 {
            return vc[0]
        } else {
            return vc[index+1]
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        guard let index = Int(viewController.restorationIdentifier!) else {
            return vc[vc.count - 1]
        }

        if index == 0 {
            return vc[vc.count - 1]
        } else {
            return vc[index - 1]
        }
    }
}
