//
//  TButton.swift
//  
//
//  Created by kazunari_ueeda on 2021/12/12.
//

import SwiftUI

public struct TButton<Content: View>: View {
    @State private var isAction: Bool
    public var onChange: ((Bool) -> Void)?
    public var trueContent: Content
    public var falseContent: Content
    
    public init(
        _ initialValue: Bool,
        onChange: ((Bool) -> Void)? = nil,
        @ViewBuilder trueContent: () -> Content,
        @ViewBuilder falseContent: () -> Content
    ) {
        self._isAction = State(wrappedValue: initialValue)
        self.onChange = onChange
        self.trueContent = trueContent()
        self.falseContent = falseContent()
    }
    
    public var body: some View {
        Button(action: {
            isAction.toggle()
            onChange?(isAction)
        }, label: {
            if isAction {
                trueContent
            } else {
                falseContent
            }
        })
    }
}


struct TButton_Previews: PreviewProvider {
    static var previews: some View {
        TButton()
    }
}
