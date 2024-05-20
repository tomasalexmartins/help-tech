//
//  NewEditClientPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 19/05/2024.
//

import SwiftUI
import UI

protocol NewEditClientPageViewProtocol: View { }

struct NewEditClientPageView<ViewModel:NewEditClientPageViewModelProtocol>: NewEditClientPageViewProtocol {
    
    @StateObject
    var viewModel: ViewModel
    
    var backButton: some View {
        VStack(alignment: .leading) {
            BackButtonView(action: .constant({viewModel.back()}))
        }
        .frame(height: 65)
        .padding(.trailing, 330)
        .padding(.top, 15)
    }
    
    var titleView: some View {
        VStack {
            Text(viewModel.title)
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
    
    var emailView: some View {
        CustomTextField(viewModel: viewModel.emailTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var cellphoneView: some View {
        CustomTextField(viewModel: viewModel.cellphoneTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var addressView: some View {
        CustomTextField(viewModel: viewModel.addressTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var nifView: some View {
        CustomTextField(viewModel: viewModel.nifTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    
    var newEditClientButton: some View {
        VStack {
            CustomButtonView(text: .constant(viewModel.btnText), isEnabled:
                    .constant(true), action: .constant({viewModel.newEditClient()}))
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
            emailView
            cellphoneView
            addressView
            nifView
            VStack() {
                newEditClientButton
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    NewEditClientPageView<NewEditClientPageViewModel>(viewModel: .init())
}
