//
//  Supplier.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import Common

public struct Supplier: Hashable, Decodable {

    public let id: String?
    public var name: String?
    public var email: String?
    public var cellphone: String?
    public var address: String?
    public var nif: String?

    public init(id: String? = nil,
                name: String? = nil,
                email: String? = nil,
                cellphone: String? = nil,
                address: String? = nil,
                nif: String? = nil) {

        self.id = id
        self.name = name
        self.email = email
        self.cellphone = cellphone
        self.address = address
        self.nif = nif
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(nif)
    }
}
