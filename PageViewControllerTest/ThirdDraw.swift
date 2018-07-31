//
//  ThirdDraw.swift
//  PageViewControllerTest
//
//  Created by Shigeo Sakamoto on 2018/07/30.
//  Copyright © 2018年 Shigeo Sakamoto. All rights reserved.
//

import UIKit

class ThirdDraw: UIView {

    override func draw(_ rect: CGRect) {
        let startAngle = (-1/2) * CGFloat(Double.pi) - CGFloat(Double.pi) / 12
        let diffAngle = CGFloat(Double.pi) / 6
        var colors: [UIColor] = []

        let sat = 0.2
        let bri = 0.8
        let alp = 1.0
        let centerX = self.bounds.width / 2
        let centerY = self.bounds.height / 2

        for i in 1...12 {
            colors.append(UIColor(hue: CGFloat(i)/12, saturation: CGFloat(sat), brightness: CGFloat(bri), alpha: CGFloat(alp)))
        }

        for i in 1...colors.count {
            let arc = UIBezierPath(arcCenter: CGPoint(x: centerX, y: centerY), radius: 80, startAngle: startAngle + CGFloat(i - 1) * diffAngle, endAngle: startAngle + diffAngle * CGFloat(i), clockwise: true)
            let aColor = colors[i - 1]
            aColor.setStroke()
            arc.lineWidth = 40
            arc.stroke()
        }
    }

}
