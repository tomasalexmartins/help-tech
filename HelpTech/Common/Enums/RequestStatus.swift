//
//  RequestStatus.swift
//  Common
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation

public enum RequestStatus: Decodable {
    case received
    case inProcess
    case completed
    case onHold
    case cancelled

    public var description: String {
        switch self {
        case .received:
            return "Recebido"
        case .inProcess:
            return "Em Processo"
        case .completed:
            return "Terminado"
        case .onHold:
            return "Em Pausa"
        case .cancelled:
            return "Cancelado"
        }
    }
}
