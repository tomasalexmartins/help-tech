//
//  ClientViewViewModel.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 13/05/2024.
//

import Foundation
import SwiftUI
import Common

public protocol ClientViewViewModelProtocol: ObservableObject {
    var name: String { get set }
    var email: String { get set }
    var cellphone: String { get set }
    
    func delete()
    func edit()
}

public class ClientViewViewModel: ClientViewViewModelProtocol {
    
    // MARK: - UI Properties
    @Binding
    public var name: String
    @Binding
    public var email: String
    @Binding
    public var cellphone: String

    public init(name: Binding<String>, email: Binding<String>, cellphone: Binding<String>) {
        self._name = name
        self._email = email
        self._cellphone = cellphone
    }
    
    public func delete() {
        
    }
    
    public func edit() {
        
    }
}
