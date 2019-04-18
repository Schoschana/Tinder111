//
//  ViewController.swift
//  FirebaseTinder
//
//  Created by LILI on 12.04.2019.
//  Copyright © 2019 LILI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
        
        let topStackView = TopNavigationStackView()
        let buttonsStackView = HomeBottomControlsStackView()
        let blueView = UIView()
        
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
        blueView.backgroundColor = .blue
        setuLayout()
        
    }
    // MARK: - Fileprivate
    
    fileprivate func setuLayout() {
        let overallStackView = UIStackView(arrangedSubviews: [topStackView,blueView, buttonsStackView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
    }
    
    
}
