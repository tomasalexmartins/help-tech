//
//  ClientView.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import SwiftUI

public struct ClientView<ViewModel: ClientViewModelProtocol>: View {
    @ObservedObject
    public var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var infoView: some View {
        VStack(alignment: .leading) {
            Text(viewModel.name)
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            Text(viewModel.email)
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            Text(viewModel.cellphone)
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
        }
        .padding(.trailing, 15)
    }
    
    var eraseButton: some View {
        DeleteButtonView(action: .constant({viewModel.delete()}))
            .frame(width: 35, height: 35)
    }
    
    var editButton: some View {
        EditButtonView(action: .constant({viewModel.edit()}))
            .frame(width: 35, height: 35)
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                infoView
                Spacer()
                VStack(alignment: .trailing) {
                    eraseButton
                    editButton
                }
                .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    @State var name: String = "João Rodrigues"
    @State var email: String = "joaorodrigues@gmail.com"
    @State var cellphone: String = "967432153"
    
    return ClientView(viewModel: ClientViewModel(name: $name, email: $email , cellphone: $cellphone))
        .padding()
        .background(.white)
}
