//
//  RecoverPasswordPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 06/05/2024.
//

import Foundation
import SwiftUI
import UI

protocol RecoverPasswordPageViewModelProtocol: ViewModelProtocol {
    var emailTextField: CustomTextFieldViewModel { get set }
    var isEnabled: Bool { get set }
    
}

class RecoverPasswordPageViewModel: RecoverPasswordPageViewModelProtocol {
    
    
    @Published
    var emailTextField: CustomTextFieldViewModel = .init(title: "E-mail",
                                                         placeholder: "e-mail...",
                                                         text: "")
    
    @Published
    var isEnabled = true
    
    init() {
    }
    
}
