//
//  AlertNoStock.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import SwiftUI

public struct AlertNoStock<ViewModel: CustomTextFieldViewModelProtocol>: View {
    @ObservedObject
    public var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var titleView: some View {
        VStack(alignment: .center) {
            Text("Acabou o stock da peça \(viewModel.title)")
                .font(.title2)
                .padding(8)
                .foregroundColor(.black)
        }
    }
    
    var cancelButton: some View {
        VStack {
            CustomButtonView(text: .constant("Cancelar"), isEnabled:
                    .constant(true), action: .constant({}))
        }
        .frame(height: 55)
    }
    
    var sendButton: some View {
        VStack {
            CustomButtonView(text: .constant("Emitir"), isEnabled:
                    .constant(true), action: .constant({}))
        }
        .frame(height: 55)
    }
    
    public var body: some View {
        VStack() {
            titleView
            HStack(alignment: .center, spacing: 30) {
                cancelButton
                sendButton
            }
            .padding(.top, 5)
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    @State var title: String = "x"
    @State var placeholder: String = "e-mail"
    @State var text: String = ""
    
    return AlertNoStock(viewModel: CustomTextFieldViewModel(title: title,placeholder: placeholder,
                                                               text: text))
    .padding()
    .background(.gray.opacity(0.3))
}
