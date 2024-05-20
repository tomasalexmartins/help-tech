//
//  SupplierMocks.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

public extension Supplier {
    static let mock1 = Supplier(
        id: "1",
        name: "Nidec",
        email: "contato@nidec.com",
        cellphone: "910000001",
        address: "Rua dos Motores 1",
        nif: "123456789"
    )
    
    static let mock2 = Supplier(
        id: "2",
        name: "STMicroelectronics",
        email: "info@stmicroelectronics.com",
        cellphone: "920000002",
        address: "Avenida dos Sensores 2",
        nif: "987654321"
    )
    
    static let mock3 = Supplier(
        id: "3",
        name: "Amphenol",
        email: "vendas@amphenol.com",
        cellphone: "930000003",
        address: "Praça dos Cabos 3",
        nif: "112233445"
    )
    
    static let mock4 = Supplier(
        id: "4",
        name: "Panasonic",
        email: "support@panasonic.com",
        cellphone: "940000004",
        address: "Travessa das Baterias 4",
        nif: "223344556"
    )
    
    static let mock5 = Supplier(
        id: "5",
        name: "Littelfuse",
        email: "contacto@littelfuse.com",
        cellphone: "960000005",
        address: "Rua dos Fusíveis 5",
        nif: "334455667"
    )
    
    static let suppliersMock = [mock1, mock2, mock3, mock4, mock5]
}
