//
//  HomePageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 06/05/2024.
//

import SwiftUI
import UI

protocol HomePageViewProtocol: View { }

struct HomePageView<ViewModel:HomePageViewModelProtocol>: HomePageViewProtocol {
    
    @StateObject
    var viewModel: ViewModel
    @State private var showClientsPage = false
    @State private var showRequestsPage = false
    @State private var showStocksPage = false
    
    var headerView: some View {
        Image("Logo")
            .resizable()
            .scaledToFit()
            .frame(width: 240, height: 240)
    }
    
    var welcomeView: some View {
        Text("Bem vindo, \(viewModel.name ?? "")")
            .font(.title2).bold()
            .padding(.vertical, 20)
    }
    
    var clientsButton: some View {
        VStack {
            CustomButtonView(text: .constant("Clientes"), isEnabled: .constant(true), action: .constant({ showClientsPage = true }))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
        .background(
            NavigationLink("", destination: ClientPageView<ClientPageViewModel>(viewModel: .init()), isActive: $showClientsPage)
                .hidden()
        )
    }
    
    var requestsButton: some View {
        VStack {
            CustomButtonView(text: .constant("Pedidos de Reparações"), isEnabled: .constant(true), action: .constant({ showRequestsPage = true }))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
        .background(
            NavigationLink("", destination: RequestPageView<RequestPageViewModel>(viewModel: .init()), isActive: $showRequestsPage)
                .hidden()
        )
    }
    
    var stocksButton: some View {
        VStack {
            CustomButtonView(text: .constant("Peças em Stock"), isEnabled: .constant(true), action: .constant({ showStocksPage = true }))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
        .background(
            NavigationLink("", destination: PartsPageView<PartsPageViewModel>(viewModel: .init()), isActive: $showStocksPage)
                .hidden()
        )
    }
    
    
    var body: some View {
        VStack(alignment: .center){
            headerView
            welcomeView
            clientsButton
                .padding(.bottom, 20)
            requestsButton
                .padding(.bottom, 20)
            stocksButton
                .padding(.bottom, 20)
            Spacer()
            
        }
        .background(.gray.opacity(0.3))
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    HomePageView<HomePageViewModel>(viewModel: .init())
}
