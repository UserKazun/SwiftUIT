//
//  TTextFielad.swift
//  
//
//  Created by kazunari_ueeda on 2021/11/23.
//

import SwiftUI

public struct TTextFieldModifier: ViewModifier {
    var icon: String
    
    public func body(content: Content) -> some View {
        content
            .overlay(
                HStack {
                    Image(systemName: icon)
                        .frame(width: 32, height: 32)
                        .background(.ultraThinMaterial)
                        .cornerRadius(15)
                        .offset(x: -46)
                        .foregroundStyle(.secondary)
                        .accessibility(hidden: true)
                    Spacer()
                }
            )
            .foregroundStyle(.primary)
            .padding(15)
            .padding(.leading, 40)
            .background(.thinMaterial)
            .cornerRadius(20)
    }
}

extension View {
    func ttextFieldModifier(icon: String) -> some View {
        self.modifier(TTextFieldModifier(icon: icon))
    }
}
