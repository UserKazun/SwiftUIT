//
//  TButton.swift
//  
//
//  Created by kazunari_ueeda on 2021/12/12.
//

import SwiftUI

public struct TButton<Content: View>: View {
    @Binding var isAction: Bool
    public var onChange: ((Bool) -> Void)?
    public var content: Content
    
    public init(isAction: Binding<Bool>, onChange: ((Bool) -> Void)? = nil, @ViewBuilder content: () -> Content) {
        self._isAction = isAction
        self.onChange = onChange
        self.content = content()
    }
    
    public var body: some View {
        Button(action: {
            onChange?(isAction)
        }, label: {
            content
        })
    }
}

struct TButton_Previews: PreviewProvider {
    static var previews: some View {
        TButton()
    }
}
