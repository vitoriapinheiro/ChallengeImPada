//
//  BrailleView.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct BrailleView: View {
    var body: some View {
        VStack {
            Image(systemName: "circle")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}
