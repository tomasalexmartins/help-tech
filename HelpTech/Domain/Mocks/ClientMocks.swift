//
//  ClientMocks.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

public extension Client {
    static let mock1 = Client(
        id: "1",
        name: "João Silva",
        email: "joao.silva@example.com",
        cellphone: "912345678",
        address: "Rua das Flores 123",
        nif: 123456789
    )
    
    static let mock2 = Client(
        id: "2",
        name: "Ana Sousa",
        email: "ana.sousa@example.com",
        cellphone: "919876543",
        address: "Avenida Principal 456",
        nif: 987654321
    )
    
    static let mock3 = Client(
        id: "3",
        name: "Carlos Pereira",
        email: "carlos.pereira@example.com",
        cellphone: "933676897",
        address: "Praça Central 789",
        nif: 112233445
    )
    
    static let mock4 = Client(
        id: "4",
        name: "Maria Oliveira",
        email: "maria.oliveira@example.com",
        cellphone: "925678234",
        address: "Travessa da Liberdade 101",
        nif: 223344556
    )
    
    static let mock5 = Client(
        id: "5",
        name: "Pedro Fernandes",
        email: "pedro.fernandes@example.com",
        cellphone: "915643897",
        address: "Rua Nova 202",
        nif: 334455667
    )
    
    static let clientsMock = [mock1, mock2, mock3, mock4, mock5]
}
