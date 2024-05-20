//
//  RequestView.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import SwiftUI
import Domain

public struct RequestView<ViewModel: RequestViewModelProtocol>: View {
    @ObservedObject
    public var viewModel: ViewModel
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var infoView: some View {
        VStack(alignment: .leading) {
            Text(viewModel.request.client?.cellphone ?? "")
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            Text(viewModel.request.client?.name ?? "")
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            Text("\(viewModel.request.employeer?.name ?? "") - Funcionário")
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            Text(viewModel.request.equipment ?? "")
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            Text(viewModel.request.status?.description ?? "")
                .font(.footnote)
                .padding(2)
                .foregroundColor(.black)
                .bold()
            if viewModel.request.timeLeft == "1"{
                Text("Previsão: Amanhã")
                    .font(.footnote)
                    .padding(2)
                    .foregroundColor(.black)
                    .bold()
            } else if viewModel.request.timeLeft == "0"{
                Text("Previsão: Hoje")
                    .font(.footnote)
                    .padding(2)
                    .foregroundColor(.black)
                    .bold()
            } else {
                Text("Previsão: \(viewModel.request.timeLeft ?? "") dias")
                    .font(.footnote)
                    .padding(2)
                    .foregroundColor(.black)
                    .bold()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 30, height: 30)
                    .shadow(radius: 1)
                
                if viewModel.request.isConfirmed == false {
                    Image(systemName: "xmark")
                        .foregroundColor(.red)
                        .font(.body)
                        .frame(width: 30, height: 30)
                }else if viewModel.request.isConfirmed == true {
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                        .font(.body)
                        .frame(width: 30, height: 30)
                }
                
            }
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
    @State var request: Request = Request.mock1

    
    return RequestView(viewModel: RequestViewModel(request: .constant(request)))
        .padding()
        .background(.white)
}
