//
//  UserMocks.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

public extension User {
    static let mock1 = User(
        id: "1",
        name: "José Almeida",
        email: "jose.almeida@example.com",
        password: "password123"
    )
    
    static let mock2 = User(
        id: "2",
        name: "Fernanda Costa",
        email: "fernanda.costa@example.com",
        password: "password123"
    )
    
    static let mock3 = User(
        id: "3",
        name: "Rui Carvalho",
        email: "rui.carvalho@example.com",
        password: "password123"
    )
    
    static let mock4 = User(
        id: "4",
        name: "Sofia Ribeiro",
        email: "sofia.ribeiro@example.com",
        password: "password123"
    )
    
    static let mock5 = User(
        id: "5",
        name: "Miguel Martins",
        email: "miguel.martins@example.com",
        password: "password123"
    )
    
    static let userMock = [mock1, mock2, mock3, mock4, mock5]
}
