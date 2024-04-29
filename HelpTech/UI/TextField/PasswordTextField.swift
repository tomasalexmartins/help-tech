//
//  PasswordTextField.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 29/04/2024.
//

import SwiftUI

public struct PasswordTextField<ViewModel: CustomTextFieldViewModelProtocol>: View {
    @ObservedObject
    public var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var titleView: some View {
        VStack {
            Text(viewModel.title)
                .font(.headline)
                .foregroundColor(.black)
        }
    }
    
    var textFieldView: some View {
        SecureField(viewModel.placeholder, text: $viewModel.text)
            .font(.body)
            .foregroundColor(.black)
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            titleView
            VStack(alignment: .leading) {
                textFieldView
            }
            .padding(8)
            .frame(height: 40)
            .background(.white)
        }
    }
}

#Preview {
    @State var title: String = "Password"
    @State var placeholder: String = "password"
    @State var text: String = ""
    
    return PasswordTextField(viewModel: CustomTextFieldViewModel(title: title, placeholder: placeholder,
                                                                 text: text))
    .padding()
    .background(.gray.opacity(0.3))
}
