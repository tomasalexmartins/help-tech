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
}

class HomePageViewModel: HomePageViewModelProtocol {
    
    
    @Published
    var name: String? = "João"

    
    init() {
    }
}
