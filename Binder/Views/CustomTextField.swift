//
//  CustomTextField.swift
//  Binder
//
//  Created by Bekzat Kalybayev on 12.11.2021.
//

import UIKit

class CustomTextField: UITextField {
    
    //Padding for text inside textField
    let padding: CGFloat
    init(padding: CGFloat){
        self.padding = padding
        super.init(frame: .zero)
        layer.cornerRadius = 25
        backgroundColor = .white
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: 0)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: 0)
    }
    
    override var intrinsicContentSize: CGSize {
        return .init(width: 0, height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
