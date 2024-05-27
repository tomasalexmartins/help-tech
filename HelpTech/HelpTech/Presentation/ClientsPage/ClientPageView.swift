//
//  ClientPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import SwiftUI
import UI
import Domain

protocol ClientPageViewProtocol: View { }

struct ClientPageView<ViewModel:ClientPageViewModelProtocol>: ClientPageViewProtocol {
    
    @Environment(\.presentationMode) var presentationMode
    @StateObject
    var viewModel: ViewModel
    @State private var showAddEditPage = false
    @State private var selectedClient: Client? = nil
    @State private var isEditMode = false
    
    var backButton: some View {
        VStack(alignment: .leading) {
            BackButtonView(action: .constant({presentationMode.wrappedValue.dismiss()}))
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
                    ClientView(viewModel: ClientViewModel(name: .constant("\(viewModel.clients[index].name ?? "")"), email: .constant(viewModel.clients[index].email ?? ""), cellphone: .constant(viewModel.clients[index].cellphone ?? "")))
                        .padding(.vertical, 20)
                        .padding(.horizontal, 10)
                        .onTapGesture {
                            selectedClient = viewModel.clients[index]
                            isEditMode = true
                            showAddEditPage = true
                        }
                }
                .background(Color.white)
                .padding(.horizontal, 10)
            }
        }
    }
    
    var newClientButton: some View {
        VStack {
            CustomButtonView(text: .constant("Novo Cliente"), isEnabled:
                    .constant(true), action: .constant({selectedClient = nil
                        isEditMode = false
                        showAddEditPage = true}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
        .background(
            NavigationLink("", destination: NewEditClientPageView<NewEditClientPageViewModel>(viewModel: .init(isEditMode: isEditMode, client: selectedClient)), isActive: $showAddEditPage)
                .hidden()
        )
    }
    
    var body: some View {
        NavigationView {
            VStack() {
                backButton
                titleView
                ScrollView {
                    listView
                }
                newClientButton
                Spacer()
            }
            .background(.gray.opacity(0.3))
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ClientPageView<ClientPageViewModel>(viewModel: .init())
}
