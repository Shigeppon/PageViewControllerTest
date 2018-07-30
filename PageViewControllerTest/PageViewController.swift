//
//  PageViewController.swift
//  PageViewControllerTest
//
//  Created by Shigeo Sakamoto on 2018/07/30.
//  Copyright © 2018年 Shigeo Sakamoto. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)

        self.dataSource = self
    }

    func getFirst() -> FirstViewController {
        return storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
    }

    func getSecond() -> SecondViewController {
        return storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
    }

    func getThird() -> ThirdViewController {
        return storyboard!.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
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

        if viewController.isKind(of: FirstViewController.self) {
            return getSecond()
        } else if viewController.isKind(of: SecondViewController.self) {
            return getThird()
        } else {
            return getFirst()
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {

        if viewController.isKind(of: FirstViewController.self) {
            return getThird()
        } else if viewController.isKind(of: SecondViewController.self) {
            return getFirst()
        } else {
            return getSecond()
        }
    }
}
