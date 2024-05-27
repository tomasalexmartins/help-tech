//
//  SignUpPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 06/05/2024.
//

import Foundation
import SwiftUI
import UI

protocol SignUpPageViewModelProtocol: ViewModelProtocol {
    var firstNameTextField: CustomTextFieldViewModel { get set }
    var lastNameTextField: CustomTextFieldViewModel { get set }
    var emailTextField: CustomTextFieldViewModel { get set }
    var passwordTextField: CustomTextFieldViewModel { get set }
    var checkPasswordTextField: CustomTextFieldViewModel { get set }
    
}

class SignUpPageViewModel: SignUpPageViewModelProtocol {
    
    @Published
    var firstNameTextField: CustomTextFieldViewModel = .init(title: "Primeiro Nome",
                                                             placeholder: "primeiro nome...",
                                                             text: "")
    @Published
    var lastNameTextField: CustomTextFieldViewModel = .init(title: "Último Nome",
                                                            placeholder: "último nome...",
                                                            text: "")
    @Published
    var emailTextField: CustomTextFieldViewModel = .init(title: "E-mail",
                                                         placeholder: "e-mail...",
                                                         text: "")
    @Published
    var passwordTextField: CustomTextFieldViewModel = .init(title: "Password",
                                                            placeholder: "password...",
                                                            text: "")
    @Published
    var checkPasswordTextField: CustomTextFieldViewModel = .init(title: "Confirmar Password",
                                                                 placeholder: "confirmar password...",
                                                                 text: "")
    
    
    init() {
    }
    
}
