//
//  NewEditClientPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 19/05/2024.
//

import Foundation
import SwiftUI
import UI
import Domain

protocol NewEditClientPageViewModelProtocol: ViewModelProtocol {
    var title: String { get set }
    var btnText: String { get set }
    var client: Client { get set }
    var nameTextField: CustomTextFieldViewModel { get set }
    var emailTextField: CustomTextFieldViewModel { get set }
    var cellphoneTextField: CustomTextFieldViewModel { get set }
    var addressTextField: CustomTextFieldViewModel { get set }
    var nifTextField: CustomTextFieldViewModel { get set }
    
    func newEditClient()
}

class NewEditClientPageViewModel: NewEditClientPageViewModelProtocol {
    
    private var flagNewEdit: String = ""
    
    @Published
    public var title: String = "Editar/Adicionar Cliente"
    
    @Published
    public var btnText: String = "Editar/Adicionar"
    
    @Published
    public var client: Client = .init(id: nil,
                                      name: nil,
                                      email: nil,
                                      cellphone: nil,
                                      address: nil,
                                      nif: nil)
    
    @Published
    var nameTextField: CustomTextFieldViewModel = .init(title: "Nome",
                                                        placeholder: "nome...",
                                                        text: "")
    @Published
    var emailTextField: CustomTextFieldViewModel = .init(title: "E-mail",
                                                         placeholder: "e-mail...",
                                                         text: "")
    @Published
    var cellphoneTextField: CustomTextFieldViewModel = .init(title: "Telefone",
                                                             placeholder: "telefone...",
                                                             text: "")
    @Published
    var addressTextField: CustomTextFieldViewModel = .init(title: "Morada",
                                                           placeholder: "morada...",
                                                           text: "")
    @Published
    var nifTextField: CustomTextFieldViewModel = .init(title: "NIF",
                                                       placeholder: "nif...",
                                                       text: "")
    
    init() {
    }
    
    func newEditClient() {
        
    }
}
