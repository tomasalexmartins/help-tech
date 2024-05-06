//
//  HomePageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 06/05/2024.
//

import Foundation
import SwiftUI
import UI

protocol HomePageViewModelProtocol: ViewModelProtocol {
    var name: String? { get set }

    func goToClients()
    func goToRequests()
    func goToParts()
}

class HomePageViewModel: HomePageViewModelProtocol {
    
    
    @Published
    var name: String?

    
    init() {
    }
    
    func goToClients() {
        
    }
    
    func goToRequests() {
        
    }
    
    func goToParts() {
        
    }
}
