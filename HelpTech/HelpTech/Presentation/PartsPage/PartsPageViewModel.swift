//
//  PartsPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import SwiftUI
import UI
import Domain

protocol PartsPageViewModelProtocol: ViewModelProtocol {
    var parts: [Part] { get set }
    
    func newPart()
}

class PartsPageViewModel: PartsPageViewModelProtocol {
    
    @Published
    public var parts: [Part] = Part.partsMock
    
    init() {
    }
    
    
    func newPart() {
        
    }
}
