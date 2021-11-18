//
//  HomeBottomControlStackView.swift
//  Binder
//
//  Created by Bekzat Kalybayev on 01.11.2021.
//

import UIKit

class HomeBottomControlStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let subviews = [UIImage(named: "refresh"), UIImage(named: "dismiss"), UIImage(named: "super"), UIImage(named: "like"), UIImage(named: "boost")].map { img -> UIView in
            let button = UIButton(type: .system)
            button.setImage(img?.withRenderingMode(.alwaysOriginal), for: .normal)
            return button
        }

        subviews.forEach { v in
            addArrangedSubview(v)
        }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
