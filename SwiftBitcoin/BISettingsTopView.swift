//
//  BISettingsTopView.swift
//  SwiftBitcoin
//
//  Created by Yusuke Asai on 2017/07/01.
//  Copyright © 2017年 Yusuke Asai. All rights reserved.
//

import UIKit

class BISettingsTopView: UIView {
    
    override func draw(_ rect: CGRect) {
        let thickness: CGFloat = 1.0
        let boarder = UIBezierPath()
        let yAxis = self.frame.size.height - thickness
        boarder.move(to: CGPoint(x: 0.0, y: yAxis))
        boarder.addLine(to: CGPoint(x: self.frame.size.width, y: yAxis))
        boarder.close()
        
        UIColor.boarderGray().setStroke()
        
        boarder.lineWidth = thickness
        boarder.stroke()
        
        placeSettingsButton(self.frame.size)
    }
    
    func placeSettingsButton(_ viewSize: CGSize) {
        let topMargin: CGFloat = 5.0
        let btnWidth = viewSize.height / 2.0 - topMargin
        let btnHeight = btnWidth
        
        let settingsBtn = UIButton(frame: CGRect(x: 20.0, y: viewSize.height / 2 - btnHeight / 2 + topMargin, width: btnWidth, height: btnHeight))
        let settingImg = UIImage(named: "settingsIcon_thicker.png")
        settingsBtn.setImage(settingImg!, for: .normal)
        settingsBtn.addTarget(self, action: #selector(settingsButtonTapped), for: .touchUpInside)
        //settingsBtn.backgroundColor = .red
        self.addSubview(settingsBtn)
    }
    
    func settingsButtonTapped() {
        print("settings button tapped")
    }
}
