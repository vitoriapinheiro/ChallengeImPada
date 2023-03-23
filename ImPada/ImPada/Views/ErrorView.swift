//
//  ErrorView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack {
            Image(systemName: "circle")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Error View")
        }
        .padding()
    }
}
