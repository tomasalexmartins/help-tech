//
//  RequestMocks.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

public extension Request {
    static let mock1 = Request(
        id: "1",
        client: Client.mock1,
        employeer: User.mock1,
        equipment: "Laptop Dell",
        equipmentType: .laptop,
        parts: [Part.mock1, Part.mock2],
        status: .received,
        timeLeft: "2",
        isConfirmed: true
    )
    
    static let mock2 = Request(
        id: "2",
        client: Client.mock2,
        employeer: User.mock2,
        equipment: "Smartphone Samsung",
        equipmentType: .smartphone,
        parts: [Part.mock3, Part.mock4],
        status: .inProcess,
        timeLeft: "3",
        isConfirmed: false
    )
    
    static let mock3 = Request(
        id: "3",
        client: Client.mock3,
        employeer: User.mock3,
        equipment: "Tablet Apple",
        equipmentType: .tablet,
        parts: [Part.mock5],
        status: .completed,
        timeLeft: "0",
        isConfirmed: true
    )
    
    static let mock4 = Request(
        id: "4",
        client: Client.mock4,
        employeer: User.mock4,
        equipment: "Impressora HP",
        equipmentType: .printer,
        parts: [Part.mock1, Part.mock3],
        status: .onHold,
        timeLeft: "1",
        isConfirmed: false
    )
    
    static let mock5 = Request(
        id: "5",
        client: Client.mock5,
        employeer: User.mock5,
        equipment: "Router TP-Link",
        equipmentType: .router,
        parts: [Part.mock2, Part.mock4],
        status: .cancelled,
        timeLeft: "5",
        isConfirmed: false
    )
    
    static let requestsMock = [mock1, mock2, mock3, mock4, mock5]
}
