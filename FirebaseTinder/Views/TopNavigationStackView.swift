//
//  TopNavigationStackView.swift
//  FirebaseTinder
//
//  Created by LILI on 12.04.2019.
//  Copyright © 2019 LILI. All rights reserved.
//

import UIKit


class TopNavigationStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
       let buttons =  [#imageLiteral(resourceName: "top_left_profile"), #imageLiteral(resourceName: "app_icon"), #imageLiteral(resourceName: "top_right_messages")].map { (img) -> UIView in
            let button = UIButton(type: .system)
        button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
        return button
        
    
        }
        buttons.forEach { (v) in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
