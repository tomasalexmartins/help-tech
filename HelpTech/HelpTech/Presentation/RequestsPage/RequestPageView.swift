//
//  RequestPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import SwiftUI
import UI

protocol RequestPageViewProtocol: View { }

struct RequestPageView<ViewModel:RequestPageViewModelProtocol>: RequestPageViewProtocol {
    
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
                
                Image(systemName: "wrench.and.screwdriver.fill")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
            }
            Text("Pedidos de Reparações")
                .font(.title3)
                .bold()
        }
        .padding(.bottom, 20)
    }
    
    var listView: some View {
        VStack(alignment: .leading) {
            ForEach(viewModel.requests.indices, id: \.self) { index in
                VStack(alignment: .leading, spacing: 0) {
                    RequestView(viewModel: RequestViewModel(request: .constant(viewModel.requests[index])))
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)
                }
                .background(Color.white)
                .padding(.horizontal, 10)
            }
        }
    }
    var newRequestButton: some View {
        VStack {
            CustomButtonView(text: .constant("Nova Reparação"), isEnabled:
                    .constant(true), action: .constant({viewModel.newRequest()}))
        }
        .padding(.horizontal, 40)
        .padding(.top, 15)
        .frame(height: 65)
    }
    
    var body: some View {
        VStack() {
            backButton
            titleView
            ScrollView {
                listView
            }
            newRequestButton
            Spacer()
                .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    RequestPageView<RequestPageViewModel>(viewModel: .init())
}
