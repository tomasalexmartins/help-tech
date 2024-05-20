//
//  CustomDropdownViewModel.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 12/05/2024.
//

import Foundation
import SwiftUI
import Common

public protocol CustomDropdownViewModelProtocol: ObservableObject {
    var selected: String { get set }
    var group: [String] { get set }
    var title: String { get set }
}

public class CustomDropdownViewModel: CustomDropdownViewModelProtocol {

    @Binding
    public var selected: String
    @Binding
    public var group: [String]
    @Binding
    public var title: String

    public init(selected: Binding<String>, group: Binding<[String]>, title: Binding<String>) {
        self._selected = selected
        self._group = group
        self._title = title
    }
}
