//
//  NewEditPartPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 26/05/2024.
//

import SwiftUI
import UI

protocol NewEditPartPageViewProtocol: View { }

struct NewEditPartPageView<ViewModel:NewEditPartPageViewModelProtocol>: NewEditPartPageViewProtocol {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject
    var viewModel: ViewModel
    
    var backButton: some View {
        VStack(alignment: .leading) {
            BackButtonView(action: .constant({presentationMode.wrappedValue.dismiss()}))
        }
        .frame(height: 65)
        .padding(.trailing, 330)
        .padding(.top, 15)
    }
    
    var titleView: some View {
        VStack {
            Text(viewModel.isEditMode ? "Editar Peça" : "Adicionar Peça")
                .font(.title3)
                .bold()
        }
        .padding(.bottom, 20)
    }
    
    var nameView: some View {
        CustomTextField(viewModel: viewModel.nameTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var supplierView: some View {
        SupplierDropdown(viewModel: SupplierDropdownViewModel(selected: $viewModel.selected))
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var quantityView: some View {
        CustomTextField(viewModel: viewModel.quantityTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var newEditPartButton: some View {
        VStack {
            CustomButtonView(text: .constant(viewModel.isEditMode ? "Editar Peça" : "Adicionar Peça"), isEnabled:
                    .constant(true), action: .constant({viewModel.newEditPart()}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var emitPartButton: some View {
        VStack {
            CustomButtonView(text: .constant("Emitir Pedido ao Fornecedor"), isEnabled:
                    .constant(true), action: .constant({}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var body: some View {
        VStack() {
            backButton
            titleView
            nameView
            supplierView
            quantityView
            VStack() {
                newEditPartButton
                if  viewModel.isEditMode {
                    emitPartButton
                }
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    NewEditPartPageView<NewEditPartPageViewModel>(viewModel: .init())
}
