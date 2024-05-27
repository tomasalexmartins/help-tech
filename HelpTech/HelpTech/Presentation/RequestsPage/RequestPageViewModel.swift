//
//  RequestPageViewModel.swift
//  HelpTech
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import SwiftUI
import UI
import Domain

protocol RequestPageViewModelProtocol: ViewModelProtocol {
    var requests: [Request] { get set }
    
    func newRequest()
}

class RequestPageViewModel: RequestPageViewModelProtocol {
    
    
    @Published
    public var requests: [Request] = Request.requestsMock
    
    init() {
    }
    
    
    func newRequest() {
        
    }
}
