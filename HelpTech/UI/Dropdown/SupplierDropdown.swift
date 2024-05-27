//
//  SupplierDropdown.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 26/05/2024.
//

import Foundation
import SwiftUI
import Common

public protocol SupplierDropdownProtocol: View { }

public struct SupplierDropdown<ViewModel: SupplierDropdownViewModelProtocol>: SupplierDropdownProtocol {
    
    @ObservedObject
    var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                HStack {
                    VStack {
                        Menu {
                            ForEach(viewModel.suppliers, id: \.self) { supplier in
                                Button(supplier.name ?? "") {
                                    viewModel.selected = supplier.name ?? ""
                                }
                            }
                        } label: {
                            VStack(alignment: .leading, spacing: 6){
                                Text("Fornecedores")
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.vertical, 8)
                                HStack {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(viewModel.selected)
                                            .foregroundColor(.gray.opacity(0.4))
                                            .padding(.horizontal, 4)
                                            .padding(.vertical, 8)
                                    }
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(.black)
                                        .imageScale(.large)
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 8)
                                        .background(Color.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 8)
                                                .stroke(Color.black, lineWidth: 1)
                                        )
                                        .padding(.horizontal, 8)
                                        .padding(.vertical, 8)
                                }
                                .background(.white)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    @State var selected: String = "Selecionar Grupo"
    
    return SupplierDropdown(viewModel: SupplierDropdownViewModel(selected: $selected))
        .padding()
        .background(.gray.opacity(0.3))
}
