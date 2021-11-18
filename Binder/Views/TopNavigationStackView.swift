//
//  TopNavigationStackView.swift
//  Binder
//
//  Created by Bekzat Kalybayev on 01.11.2021.
//

import UIKit

class TopNavigationStackView: UIStackView {
    
    let settingsButton = UIButton(type: .system)
    private let messageButton = UIButton(type: .system)
    private let logoImage = UIImageView(image: UIImage(named: "appIcon"))

    override init(frame: CGRect) {
        super.init(frame: frame)
        heightAnchor.constraint(equalToConstant: 80).isActive = true

        logoImage.contentMode = .scaleAspectFit
        
        settingsButton.setImage(UIImage(named: "profile")!.withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(UIImage(named: "message")!.withRenderingMode(.alwaysOriginal), for: .normal)
        
        [settingsButton, UIView(), logoImage, UIView(), messageButton].forEach { v in
            addArrangedSubview(v)
        }
        
        distribution = .equalCentering
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
