//
//  PartViewModel.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 20/05/2024.
//

import Foundation
import SwiftUI
import Common
import Domain

public protocol PartViewModelProtocol: ObservableObject {
    var name: String { get set }
    var supplier: String { get set }
    var quantity: Int { get set }
    
    func edit()
}

public class PartViewModel: PartViewModelProtocol {

    @Binding
    public var name: String
    @Binding
    public var supplier: String
    @Binding
    public var quantity: Int

    public init(name: Binding<String>, supplier: Binding<String>, quantity: Binding<Int>) {
        self._name = name
        self._supplier = supplier
        self._quantity = quantity
    }
    
    public func edit() {
        
    }
}
