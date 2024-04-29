//
//  ViewModelProtocol.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 29/04/2024.
//

import Foundation

typealias ViewModel = (AnyObject & Identifiable & ObservableObject)

protocol ViewModelProtocol: ViewModel {
    
}
