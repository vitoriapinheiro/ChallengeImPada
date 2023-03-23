//
//  NumberView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct NumberView: View {
    var body: some View {
        VStack {
            Image(systemName: "circle")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Number")
        }
        .padding()
    }
}
