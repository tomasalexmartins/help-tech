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
    var isEditMode: Bool { get }
    var client: Client { get set }
    var nameTextField: CustomTextFieldViewModel { get set }
    var emailTextField: CustomTextFieldViewModel { get set }
    var cellphoneTextField: CustomTextFieldViewModel { get set }
    var addressTextField: CustomTextFieldViewModel { get set }
    var nifTextField: CustomTextFieldViewModel { get set }
    
    func newEditClient()
}

class NewEditClientPageViewModel: NewEditClientPageViewModelProtocol {
    
    @Published
    public var isEditMode: Bool = false
    
    @Published
    public var client: Client = .init(id: nil,
                                      name: nil,
                                      email: nil,
                                      cellphone: nil,
                                      address: nil,
                                      nif: nil)
    
    @Published
    var nameTextField: CustomTextFieldViewModel
    @Published
    var emailTextField: CustomTextFieldViewModel
    @Published
    var cellphoneTextField: CustomTextFieldViewModel 
    @Published
    var addressTextField: CustomTextFieldViewModel
    @Published
    var nifTextField: CustomTextFieldViewModel
    
    init(isEditMode: Bool = false, client: Client? = nil) {
        self.isEditMode = isEditMode
        let initialClient = client ?? Client(id: nil, name: nil, email: nil, cellphone: nil, address: nil, nif: nil)
        
        self.client = initialClient
        
        self.nameTextField = CustomTextFieldViewModel(title: "Nome", placeholder: "nome...", text: initialClient.name ?? "")
        self.emailTextField = CustomTextFieldViewModel(title: "E-mail", placeholder: "e-mail...", text: initialClient.email ?? "")
        self.cellphoneTextField = CustomTextFieldViewModel(title: "Telefone", placeholder: "telefone...", text: initialClient.cellphone ?? "")
        self.addressTextField = CustomTextFieldViewModel(title: "Morada", placeholder: "morada...", text: initialClient.address ?? "")
        self.nifTextField = CustomTextFieldViewModel(title: "NIF", placeholder: "nif...", text: String(initialClient.nif ?? 0))
    }
    
    func newEditClient() {
        
    }
}
