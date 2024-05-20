//
//  Part.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import Common

public struct Part: Hashable, Decodable {

    public let id: String?
    public var name: String?
    public var supplier: Supplier?
    public var quantity: Int?
    public var price: Double?
    public var description: String?
    public var stock: Bool?

    public init(id: String? = nil,
                name: String? = nil,
                supplier: Supplier? = nil,
                quantity: Int? = nil,
                price: Double? = nil,
                description: String? = nil,
                stock: Bool? = nil) {

        self.id = id
        self.name = name
        self.supplier = supplier
        self.quantity = quantity
        self.price = price
        self.description = description
        self.stock = stock
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
