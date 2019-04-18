//
//  HomeBottomControlsStackView.swift
//  FirebaseTinder
//
//  Created by LILI on 12.04.2019.
//  Copyright © 2019 LILI. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    distribution = .fillEqually
   heightAnchor.constraint(equalToConstant: 100).isActive = true
    
   let subviews =  [#imageLiteral(resourceName: "like_circle"), #imageLiteral(resourceName: "dismiss_circle"), #imageLiteral(resourceName: "super_like_circle"),#imageLiteral(resourceName: "like_circle"), #imageLiteral(resourceName: "boost_circle")].map { (img) -> UIView in
        let button = UIButton( type: .system )
        button.setImage(img.withRenderingMode(.alwaysOriginal), for: .normal)
    return button
    }
    

    
    subviews.forEach { (v) in
        addArrangedSubview(v)
    }
    
    
     }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
