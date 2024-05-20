//
//  Request.swift
//  Domain
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import Common

public struct Request: Hashable, Decodable {
    
    public let id: String?
    public var client: Client?
    public var employeer: User?
    public var equipment: String?
    public var equipmentType: EquipmentType?
    public var parts: [Part]?
    public var status: RequestStatus?
    public var timeLeft: String?
    public var isConfirmed: Bool?
    
    public init(id: String? = nil,
                client: Client? = nil,
                employeer: User? = nil,
                equipment: String? = nil,
                equipmentType: EquipmentType? = nil,
                parts: [Part]? = nil,
                status: RequestStatus? = nil,
                timeLeft: String? = nil,
                isConfirmed: Bool? = nil) {
        
        self.id = id
        self.client = client
        self.employeer = employeer
        self.equipment = equipment
        self.equipmentType = equipmentType
        self.parts = parts
        self.status = status
        self.timeLeft = timeLeft
        self.isConfirmed = isConfirmed
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
