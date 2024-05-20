//
//  PartView.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import SwiftUI

public struct PartView<ViewModel: PartViewModelProtocol>: View {
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
            Text(viewModel.supplier)
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            if viewModel.quantity == 0 {
                Text("sem stock")
                    .font(.footnote)
                    .padding(2)
                    .foregroundColor(.black)
                    .bold()
            }
            Text("\(viewModel.quantity) em stock")
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
        }
        .padding(.trailing, 15)
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
                    editButton
                }
                .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    @State var name: String = "Bateria"
    @State var supplier: String = "Parasonic"
    @State var quantity: Int = 10
    
    return PartView(viewModel: PartViewModel(name: $name, supplier: $supplier , quantity: $quantity))
        .padding()
        .background(.white)
}
