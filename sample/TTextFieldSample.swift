//
//  SwiftUIView.swift
//  
//
//  Created by kazunari_ueeda on 2021/11/28.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var text: String = ""
    
    var body: some View {
        TTextFieldView(text: $text, placeholder: "Placeholder", icon: "person")
    }
}

#if DEBUG
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
#endif
