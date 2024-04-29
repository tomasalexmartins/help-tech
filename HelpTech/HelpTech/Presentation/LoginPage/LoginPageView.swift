//
//  ContentView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 15/04/2024.
//

import SwiftUI

protocol LoginPageViewProtocol: View { }

struct LoginPageView<ViewModel:LoginPageViewModelProtocol>: LoginPageViewProtocol {

    @StateObject
    var viewModel: ViewModel

    var headerView: some View {
        VStack{
            
        }
    }

    var emailView: some View {
        VStack{
            
        }
    }

    var passwordView: some View {
        VStack{
            
        }
    }

    var forgotPasswordView: some View {
        HStack {
            Spacer()
            Text("Recuperar Senha")
        }
    }

    var loginButton: some View {
        VStack{
            
        }
    }

    var createAccountView: some View {
        HStack {
            Text("Registar")
        }
    }


    var body: some View {
        VStack {
            headerView
            emailView
            passwordView
            forgotPasswordView
            loginButton
            createAccountView
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LoginPageView<LoginPageViewModel>(viewModel: .init())
}
