//
//  RequestViewModel.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import SwiftUI
import Common
import Domain

public protocol RequestViewModelProtocol: ObservableObject {
    var request: Request { get set }
    
    func edit()
}

public class RequestViewModel: RequestViewModelProtocol {
    
    @Binding
    public var request: Request
    
    
    public init(request: Binding<Request>) {
        self._request = request
    }
    
    public func edit() {
        
    }
}
