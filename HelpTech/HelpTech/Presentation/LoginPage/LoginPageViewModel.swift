//
//  LoginPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 29/04/2024.
//

import Foundation
import SwiftUI
import UI

protocol LoginPageViewModelProtocol: ViewModelProtocol {
    var emailTextField: CustomTextFieldViewModel { get set }
    var passwordTextField: CustomTextFieldViewModel { get set }
    
    func authenticate() -> Bool
}

class LoginPageViewModel: LoginPageViewModelProtocol {
    
    @Published
    var emailTextField: CustomTextFieldViewModel = .init(title: "E-mail",
                                                         placeholder: "e-mail...",
                                                         text: "")
    @Published
    var passwordTextField: CustomTextFieldViewModel = .init(title: "Password",
                                                            placeholder: "password...",
                                                            text: "")
    @Published
    var isEnabled = true
    
    init() {
    }
    
    
    func authenticate() -> Bool {
        guard isValidEmail(emailTextField.text) else {
            return false
        }

        guard passwordTextField.text.count >= 8 else {
            return false
        }
        
        return true
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}
