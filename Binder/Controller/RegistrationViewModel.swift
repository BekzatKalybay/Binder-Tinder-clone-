//
//  RegistrationViewModel.swift
//  Binder
//
//  Created by Bekzat Kalybayev on 16.11.2021.
//

import Foundation

class RegistrationViewModel {
    
    var fullName: String? {
        didSet {
            checkFormValidity()
        }
    }
    var email: String? { didSet { checkFormValidity() } }
    var password: String? { didSet { checkFormValidity() } }
    
    fileprivate func checkFormValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
        isFormValidObserver?(isFormValid)
    }
    
    //Reactive programming
    var isFormValidObserver: ((Bool) -> ())?
    
}
