//
//  PLHUD.swift
//  HUD_Ex
//
//  Created by plum on 2018/11/2.
//  Copyright © 2018 Tima. All rights reserved.
//

import UIKit

public class PLHUD: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        let containerView = UIView(frame: CGRect.zero)
        containerView.backgroundColor = UIColor(white: 0, alpha: 0.8)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.layer.cornerRadius = 5.0
        containerView.layer.masksToBounds = true
        self.addSubview(containerView)
        containerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        containerView.widthAnchor.constraint(equalToConstant: 77).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 77).isActive = true
        
        
        let activety = UIActivityIndicatorView(style: .whiteLarge)
        //        activety.color = UIColor.red
        activety.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(activety)
        activety.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        activety.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        activety.startAnimating()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public class func show(in view: UIView) {
        let hud = PLHUD()
        view.addSubview(hud)
        hud.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        hud.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        hud.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        hud.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
    
    public class func hide(in view: UIView) {
        view.subviews.forEach { view in
            if view is PLHUD {
                view.removeFromSuperview()
                return
            }
        }
    }
    
}


