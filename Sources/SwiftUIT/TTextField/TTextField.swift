//
//  TTextFieldView.swift
//  
//
//  Created by kazunari_ueeda on 2021/12/11.
//

import SwiftUI

public struct TTextField: View {
    @Binding private var text: String
    
    public var placeholder: String
    public var icon: String
    
    public init(text: Binding<String>, placeholder: String, icon: String) {
        self._text = text
        
        self.placeholder = placeholder
        self.icon = icon
    }
    
    public var body: some View {
        TextField(placeholder, text: $text)
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

#if DEBUG
struct TTextField_Previews: PreviewProvider {
    static var previews: some View {
        TTextField(text: .constant(""), placeholder: "placeholder", icon: "person")
    }
}
#endif
