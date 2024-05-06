//
//  BackButton.swift
//  UI
//
//  Created by Martins, Tomas Alexandre on 29/04/2024.
//

import Foundation
import SwiftUI
import Common

public struct BackButtonView: View {
    @Binding public var action: VoidHandler
    
    public init( action: Binding<VoidHandler> ) {
        self._action = action
    }
    
    public var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(systemName: "arrow.left")
                .foregroundColor(.black)
                .imageScale(.large)
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    @State var action: VoidHandler = { print("test") }
    
    return BackButtonView(action: $action)
}
