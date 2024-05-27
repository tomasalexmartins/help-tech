//
//  SupplierDropdownViewModel.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 26/05/2024.
//

import Foundation
import SwiftUI
import Common
import Domain
import Combine

public protocol SupplierDropdownViewModelProtocol: ObservableObject {
    var selected: String { get set }
    var suppliers: [Supplier] { get set }
}

public class SupplierDropdownViewModel: SupplierDropdownViewModelProtocol {

    @Binding
    public var selected: String

    public var suppliers: [Supplier] = Supplier.suppliersMock

    public init(selected: Binding<String>) {
        self._selected = selected
    }
}
