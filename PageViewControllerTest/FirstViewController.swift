//
//  ViewController.swift
//  PageViewControllerTest
//
//  Created by Shigeo Sakamoto on 2018/07/30.
//  Copyright © 2018年 Shigeo Sakamoto. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let screenWidth = view.bounds.width
        let screenHeight = view.bounds.height

        let draw = FirstDraw(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        view.addSubview(draw)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

