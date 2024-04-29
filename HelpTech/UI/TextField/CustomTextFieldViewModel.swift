//
//  CustomTextFieldViewModel.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 29/04/2024.
//

import Foundation
import SwiftUI
import Combine

public protocol CustomTextFieldViewModelProtocol: ObservableObject {
    var title: String { get set }
    var placeholder: String { get set }
    var text: String { get set }
}

public class CustomTextFieldViewModel: CustomTextFieldViewModelProtocol {

    @Published
    public var title: String
    @Published
    public var placeholder: String
    @Published
    public var text: String

    public init(title: String = "",
                placeholder: String = "",
                text: String = "") {
        self.title = title
        self.placeholder = placeholder
        self.text = text
    }
}

