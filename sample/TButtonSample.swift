//
//  TButtonSample.swift
//  
//
//  Created by kazunari_ueeda on 2021/12/12.
//

import SwiftUI

struct TButtonSample: View {
    @State var isAction: Bool = false
    @State var buttonText: String = ""
    
    var body: some View {
        TButton(true, onChange:  { _ in
            // Elements to be switched and displayed, such as text.
        },
                trueContent: {
            Text("true")
        },
                falseContent: {
            Text("false")
        })
    }
}

struct TButtonSample_Previews: PreviewProvider {
    static var previews: some View {
        TButtonSample()
    }
}
