//
//  NewEditPartPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 26/05/2024.
//

import Foundation
import SwiftUI
import UI
import Domain

protocol NewEditPartPageViewModelProtocol: ViewModelProtocol {
    var part: Part { get set }
    var selected: String { get set }
    var isEditMode: Bool { get }
    var nameTextField: CustomTextFieldViewModel { get set }
    var quantityTextField: CustomTextFieldViewModel { get set }
    
    func newEditPart()
}

class NewEditPartPageViewModel: NewEditPartPageViewModelProtocol {
    
    @Published
    public var selected: String = "fornecedor..."
    
    @Published
    public var isEditMode: Bool = false
    
    @Published
    public var part: Part = .init(id: nil,
                                  name: nil,
                                  supplier: nil,
                                  quantity: nil,
                                  price: nil,
                                  description: nil,
                                  stock: nil)
    
    @Published
    var nameTextField: CustomTextFieldViewModel
    @Published
    var quantityTextField: CustomTextFieldViewModel
    
    init(isEditMode: Bool = false, part: Part? = nil) {
            self.isEditMode = isEditMode
            let initialPart = part ?? Part(id: nil,
                                           name: nil,
                                           supplier: nil,
                                           quantity: nil,
                                           price: nil,
                                           description: nil,
                                           stock: nil)
            
            self.part = initialPart
            self.nameTextField = CustomTextFieldViewModel(title: "Nome", placeholder: "nome...", text: initialPart.name ?? "")
            self.quantityTextField = CustomTextFieldViewModel(title: "Quantidade", placeholder: "quantidade...", text: initialPart.quantity != nil ? "\(initialPart.quantity!)" : "")
            self.selected = initialPart.supplier?.name ?? "fornecedor..."
        }
    
    func newEditPart() {
        if isEditMode {
            
        }
    }
}
