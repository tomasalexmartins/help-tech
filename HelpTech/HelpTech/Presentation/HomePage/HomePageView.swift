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
            CustomButtonView(text: .constant("Clientes"), isEnabled:
                    .constant(true), action: .constant(viewModel.goToClients))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var requestsButton: some View {
        VStack {
            CustomButtonView(text: .constant("Pedidos de Reparações"), isEnabled:
                    .constant(true), action: .constant(viewModel.goToRequests))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var stocksButton: some View {
        VStack {
            CustomButtonView(text: .constant("Peças em Stock"), isEnabled:
                    .constant(true), action: .constant(viewModel.goToParts))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
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
        .navigationBarBackButtonHidden(true)
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    HomePageView<HomePageViewModel>(viewModel: .init())
}
