//
//  ContentView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 15/04/2024.
//

import SwiftUI
import UI

protocol LoginPageViewProtocol: View { }

struct LoginPageView<ViewModel:LoginPageViewModelProtocol>: LoginPageViewProtocol {
    
    @StateObject
    var viewModel: ViewModel
    @State private var showHomePage = false
    
    var headerView: some View {
        VStack {
            Text("Help Tech")
                .font(.largeTitle)
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240)
        }
        .padding(.horizontal, 120)
    }
    
    var emailView: some View {
        CustomTextField(viewModel: viewModel.emailTextField)
            .padding(.horizontal, 40)
            .padding(.top, 40)
    }
    
    var passwordView: some View {
        PasswordTextField(viewModel: viewModel.passwordTextField)
            .padding(.horizontal, 40)
            .padding(.top, 15)
    }
    
    var forgotPasswordView: some View {
        NavigationLink(destination: RecoverPasswordPageView<RecoverPasswordPageViewModel>(viewModel: .init())) {
            VStack(alignment: .leading) {
                Text("Recuperar Senha")
                    .font(.caption)
            }
            .padding(.leading, 40)
            .padding(.top, 15)
        }
    }
    
    var loginButton: some View {
        VStack {
            CustomButtonView(text: .constant("Entrar"), isEnabled: .constant(true), action: .constant({showHomePage = viewModel.authenticate()}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
        .background(
            NavigationLink("", destination: HomePageView(viewModel: HomePageViewModel()), isActive: $showHomePage)
                .hidden()
        )
    }
    
    var createAccountView: some View {
        NavigationLink(destination:  SignUpPageView<SignUpPageViewModel>(viewModel: .init())){
            VStack(alignment: .trailing) {
                Text("Registar")
                    .font(.caption)
                    .foregroundColor(.blue)
            }
            .padding(.trailing, 40)
            .padding(.top, 15)
        }
    }
    
    
    var body: some View {
        VStack{
            headerView
            VStack(alignment: .leading) {
                emailView
                passwordView
                loginButton
                HStack(spacing: 169) {
                    forgotPasswordView
                    createAccountView
                }
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    LoginPageView<LoginPageViewModel>(viewModel: .init())
}
