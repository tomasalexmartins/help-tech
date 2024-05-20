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
    func back()
}

class ClientPageViewModel: ClientPageViewModelProtocol {
    
    @Published
    public var clients: [Client] = [Client(id: "1", firstname: "João", lastname: "Silva", email: "joao.silva@example.com", cellphone: "912345678", address: "Rua Principal, 123", nif: 123456789),
                                    Client(id: "2", firstname: "Maria", lastname: "Santos", email: "maria.santos@example.com", cellphone: "932134567", address: "Avenida Central, 456", nif: 987654321),
                                    Client(id: "3", firstname: "Rui", lastname: "Ferreira", email: "rui.ferreira@example.com", cellphone: "919876543", address: "Largo das Flores, 789", nif: 555123456),
                                    Client(id: "4", firstname: "Lia", lastname: "Sousa", email: "lia.sousa@example.com", cellphone: "913287043", address: "Rua da Sofia, 20", nif: 578953245)]
    
    init() {
    }
    
    
    func newClient() {
        
    }
    
    func back() {
        
    }
}
