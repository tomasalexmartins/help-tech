//
//  ClientPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import Foundation
import SwiftUI
import UI
import Domain

protocol ClientPageViewModelProtocol: ViewModelProtocol {
    var clients: [Client] { get set }
    
    func newClient()
}

class ClientPageViewModel: ClientPageViewModelProtocol {
    
    @Published
    public var clients: [Client] = Client.clientsMock
    
    init() {
    }
    
    
    func newClient() {
        
    }
}
