//
//  PartsPageView.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import SwiftUI
import UI

protocol PartsPageViewProtocol: View { }

struct PartsPageView<ViewModel:PartsPageViewModelProtocol>: PartsPageViewProtocol {
    
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
                
                Image(systemName: "screwdriver.fill")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
            }
            Text("Peças")
                .font(.title3)
                .bold()
        }
        .padding(.bottom, 20)
    }
    
    var listView: some View {
        VStack(alignment: .leading) {
            ForEach(viewModel.parts.indices, id: \.self) { index in
                VStack(alignment: .leading, spacing: 0) {
                    PartView(viewModel: PartViewModel(name: .constant("\(viewModel.parts[index].name ?? "")"), supplier: .constant(viewModel.parts[index].supplier?.name ?? ""), quantity: .constant(viewModel.parts[index].quantity ?? 0)))
                        .padding(.vertical, 20)
                        .padding(.horizontal, 10)
                }
                .background(Color.white)
                .padding(.horizontal, 10)
            }
        }
    }
    
    var newPartButton: some View {
        VStack {
            CustomButtonView(text: .constant("Nova Peça"), isEnabled:
                    .constant(true), action: .constant({viewModel.newPart()}))
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
            newPartButton
            Spacer()
            .navigationBarBackButtonHidden(true)
        }
        .background(.gray.opacity(0.3))
    }
}

#Preview {
    PartsPageView<PartsPageViewModel>(viewModel: .init())
}
