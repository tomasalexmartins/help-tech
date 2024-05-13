//
//  Client.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import Foundation
import Common

public struct Client: Hashable, Decodable {

    public let id: String?
    public var firstname: String?
    public var lastname: String?
    public var email: String?
    public var cellphone: String?
    public var adress: String?
    public var nif: Int?

    public init(id: String? = nil,
                firstname: String? = nil,
                lastname: String? = nil,
                email: String? = nil,
                cellphone: String? = nil,
                adress: String? = nil,
                nif: Int? = nil) {

        self.id = id
        self.firstname = firstname
        self.lastname = lastname
        self.email = email
        self.cellphone = cellphone
        self.adress = adress
        self.nif = nif
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(nif)
    }
}
