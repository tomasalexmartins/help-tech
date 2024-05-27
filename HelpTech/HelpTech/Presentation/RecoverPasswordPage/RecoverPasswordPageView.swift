//
//  RecoverPasswordPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 06/05/2024.
//

import SwiftUI
import UI

protocol RecoverPasswordPageViewProtocol: View { }

struct RecoverPasswordPageView<ViewModel:RecoverPasswordPageViewModelProtocol>: RecoverPasswordPageViewProtocol {
    
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
    
    var emailView: some View {
        CustomTextField(viewModel: viewModel.emailTextField)
            .padding(.horizontal, 40)
    }
    
    var emailButton: some View {
        VStack {
            CustomButtonView(text: .constant("Recuperar"), isEnabled:
                                $viewModel.isEnabled, action: .constant({}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var body: some View {
        VStack() {
            backButton
            VStack() {
                Spacer().frame(height: 200)
                emailView
                emailButton
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    RecoverPasswordPageView<RecoverPasswordPageViewModel>(viewModel: .init())
}
