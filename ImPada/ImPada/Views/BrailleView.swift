//
//  BrailleView.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct BrailleView: View {
    var body: some View {
        VStack{
            Spacer(minLength: 5)
            HStack(spacing: 80){
                GridView(code: [false, false, true, true, true, true])
                GridView(code: [true, false, false, false, false, false])
            }
            Spacer(minLength: 5)
            AppImageButton(icon: "seta",
                           nextView: {AnyView(NumberView())},
                           width: 100,
                           height: 100)
            Spacer(minLength: 5)
        }
        .padding()
    }
}
