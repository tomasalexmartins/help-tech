//
//  AlertAskStock.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import SwiftUI

public struct AlertAskStock<ViewModel: CustomTextFieldViewModelProtocol>: View {
    @ObservedObject
    public var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var titleView: some View {
        VStack(alignment: .center) {
            Text("Emitir pedido ao fornecedor")
                .font(.title2)
                .padding(8)
                .foregroundColor(.black)
        }
    }
    
    var quantity: some View {
        HStack(alignment: .center){
            Text("Quantidade:")
                .font(.title3)
                .padding(8)
                .foregroundColor(.black)
            VStack(alignment: .leading) {
                TextField("", text: $viewModel.text)
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding(10)
            .frame(width: 40, height: 40)
            .background(.white)
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
            quantity
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
    @State var placeholder: String = ""
    @State var text: String = ""
    
    return AlertAskStock(viewModel: CustomTextFieldViewModel(title: title,placeholder: placeholder,
                                                               text: text))
    .padding()
    .background(.gray.opacity(0.3))
}
