//
//  PartMocks.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

// MARK: - Part Mocks
public extension Part {
    
    static let mock1 = Part(
        id: "1",
        name: "Motor",
        supplier: Supplier.mock1,
        quantity: 10,
        price: 50.00,
        description: "Motor de alta eficiência",
        stock: true
    )
    
    static let mock2 = Part(
        id: "2",
        name: "Sensor",
        supplier: Supplier.mock2,
        quantity: 25,
        price: 15.00,
        description: "Sensor de precisão",
        stock: true
    )
    
    static let mock3 = Part(
        id: "3",
        name: "Cabo",
        supplier: Supplier.mock3,
        quantity: 5,
        price: 5.00,
        description: "Cabo de alta durabilidade",
        stock: false
    )
    
    static let mock4 = Part(
        id: "4",
        name: "Bateria",
        supplier: Supplier.mock4,
        quantity: 8,
        price: 30.00,
        description: "Bateria de longa duração",
        stock: true
    )
    
    static let mock5 = Part(
        id: "5",
        name: "Fusível",
        supplier: Supplier.mock5,
        quantity: 2,
        price: 2.50,
        description: "Fusível de segurança",
        stock: true
    )
    
    static let partsMock = [mock1, mock2, mock3, mock4, mock5]
}
