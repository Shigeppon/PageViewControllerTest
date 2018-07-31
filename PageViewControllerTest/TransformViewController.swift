//
//  TransformViewController.swift
//  PageViewControllerTest
//
//  Created by Shigeo Sakamoto on 2018/07/31.
//  Copyright © 2018年 Shigeo Sakamoto. All rights reserved.
//

import UIKit

class TransformViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let screenWidth = view.bounds.width
        let screenHeight = view.bounds.height

        let draw = TransformDraw(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        draw.totalView = (parent as! PageViewController).vc.count
        draw.currentView = Int(self.restorationIdentifier!)!
        view.addSubview(draw)
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
