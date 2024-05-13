//
//  ClientPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import SwiftUI
import UI

protocol ClientPageViewProtocol: View { }

struct ClientPageView<ViewModel:ClientPageViewModelProtocol>: ClientPageViewProtocol {
    
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
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 80, height: 80)
                    .shadow(radius: 3)
                
                Image(systemName: "person.3.fill")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
            }
            Text("Clientes")
                .font(.title3)
                .bold()
        }
        .padding(.bottom, 20)
    }
    
    var listView: some View {
        VStack(alignment: .leading) {
            ForEach(viewModel.clients.indices, id: \.self) { index in
                VStack(alignment: .leading, spacing: 0) {
                    ClientView(viewModel: ClientViewViewModel(name: .constant("\(viewModel.clients[index].firstname ?? "") \(viewModel.clients[index].lastname ?? "")"), email: .constant(viewModel.clients[index].email ?? ""), cellphone: .constant(viewModel.clients[index].cellphone ?? "")))
                        .padding(.vertical, 20)
                        .padding(.horizontal, 10)
                }
                .background(Color.white)
                .padding(.horizontal, 10)
            }
        }
    }
    
    var newClientButton: some View {
        VStack {
            CustomButtonView(text: .constant("Novo Cliente"), isEnabled:
                    .constant(true), action: .constant({viewModel.newClient()}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var body: some View {
        VStack() {
            backButton
            titleView
            listView
            VStack() {
                newClientButton
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    ClientPageView<ClientPageViewModel>(viewModel: .init())
}
