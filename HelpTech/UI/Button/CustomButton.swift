//
//  CustomButton.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 29/04/2024.
//

import Foundation
import SwiftUI
import Common

public struct CustomButtonView: View {
    @Binding public var text: String
    @Binding public var isEnabled: Bool
    @Binding public var action: VoidHandler
    
    public init(text: Binding<String>,
                isEnabled: Binding<Bool>,
                action: Binding<VoidHandler> ) {
        self._text = text
        self._isEnabled = isEnabled
        self._action = action
    }
    
    public var body: some View {
        Button {
            action()
        } label: {
            HStack(spacing: 10, content: {
                Text(text)
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .disabled(!isEnabled)
        .background(.blue)
    }
}

#Preview {
    @State var text: String = "Custom Button"
    @State var isEnabled: Bool = true
    @State var action: VoidHandler = { print("test") }
    
    return CustomButtonView(text: $text,
                            isEnabled: $isEnabled,
                            action: $action)
}
