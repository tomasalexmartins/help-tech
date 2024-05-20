//
//  EquipmentType.swift
//  Common
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

public enum EquipmentType: Decodable {
    case smartphone
    case laptop
    case tablet
    case desktopComputer
    case printer
    case monitor
    case television
    case router
    case gameConsole
    case camera
    
    public var name: String {
        switch self {
        case .smartphone:
            return "Smartphone"
        case .laptop:
            return "Portátil"
        case .tablet:
            return "Tablet"
        case .desktopComputer:
            return "Computador Fixo"
        case .printer:
            return "Impressora"
        case .monitor:
            return "Monitor"
        case .television:
            return "Televisão"
        case .router:
            return "Router"
        case .gameConsole:
            return "Consola de Jogos"
        case .camera:
            return "Câmara"
        }
    }
    
    public var estimatedRepairTimeInDays: Int {
        switch self {
        case .smartphone:
            return 1
        case .tablet:
            return 2
        case .router:
            return 1
        case .laptop:
            return 3
        case .desktopComputer:
            return 4
        case .printer:
            return 3
        case .monitor:
            return 2
        case .television:
            return 5
        case .gameConsole:
            return 4
        case .camera:
            return 3
        }
    }
}
