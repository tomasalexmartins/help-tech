//
//  CustomDropdown.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 12/05/2024.
//

import Foundation
import SwiftUI
import Common

public protocol CustomDropdownProtocol: View { }

public struct CustomDropdown<ViewModel: CustomDropdownViewModelProtocol>: CustomDropdownProtocol {
    
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
                            ForEach(viewModel.group, id: \.self) { string in
                                Button(string) {
                                    viewModel.selected = string
                                }
                            }
                        } label: {
                            VStack(alignment: .leading, spacing: 6){
                                Text(viewModel.title)
                                    .bold()
                                    .foregroundColor(.black)
                                    .padding(.vertical, 8)
                                HStack {
                                    VStack(alignment: .leading, spacing: 6) {
                                        Text(viewModel.selected)
                                            .bold()
                                            .foregroundColor(.gray)
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
    @State var title: String = "Grupo"
    @State var group: [String] = ["eqwq", "wqdwq"]
    
    return CustomDropdown(viewModel: CustomDropdownViewModel(selected: $selected, group: $group, title: $title))
        .padding()
        .background(.gray.opacity(0.3))
}
