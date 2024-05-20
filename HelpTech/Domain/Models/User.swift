//
//  User.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import Common

public struct User: Hashable, Decodable {

    public let id: String?
    public var name: String?
    public var email: String?
    public var password: String?

    public init(id: String? = nil,
                name: String? = nil,
                email: String? = nil,
                password: String? = nil) {

        self.id = id
        self.name = name
        self.email = email
        self.password = password
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    public static func == (lhs: User, rhs: User) -> Bool {
        return lhs.id == rhs.id
    }
}
