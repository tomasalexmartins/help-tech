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
    var isEnabled: Bool { get set }

    func authenticate()
}

class LoginPageViewModel: LoginPageViewModelProtocol {
    
    @Published
    var emailTextField: CustomTextFieldViewModel = .init(title: "E-mail",
                                                         placeholder: "e-mail",
                                                         text: "")
    @Published
    var passwordTextField: CustomTextFieldViewModel = .init(title: "Password",
                                                            placeholder: "password",
                                                            text: "")
    @Published
    var isEnabled = true
    
    init() {
    }
    
    func authenticate() {
       
    }
}
