//
//  SignUpPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 06/05/2024.
//

import SwiftUI
import UI

protocol SignUpPageViewProtocol: View { }

struct SignUpPageView<ViewModel:SignUpPageViewModelProtocol>: SignUpPageViewProtocol {
    
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
    
    var firstNameView: some View {
        CustomTextField(viewModel: viewModel.firstNameTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var lastNameView: some View {
        CustomTextField(viewModel: viewModel.lastNameTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var emailView: some View {
        CustomTextField(viewModel: viewModel.emailTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var passwordView: some View {
        CustomTextField(viewModel: viewModel.passwordTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var checkPasswordView: some View {
        CustomTextField(viewModel: viewModel.checkPasswordTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var signUpButton: some View {
        VStack {
            CustomButtonView(text: .constant("Registar"), isEnabled:
                    .constant(true), action: .constant({}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var body: some View {
        VStack() {
            backButton
            VStack() {
                firstNameView
                lastNameView
                emailView
                passwordView
                checkPasswordView
                signUpButton
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    SignUpPageView<SignUpPageViewModel>(viewModel: .init())
}
