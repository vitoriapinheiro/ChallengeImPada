//
//  BrailleView.swift
//  ImPada
//
//  Created by vivi on 20/03/23.
//

import SwiftUI

struct BrailleView: View {
    var body: some View {
        HStack(spacing: 80){
            GridView(code: [false, false, true, true, true, true])
            GridView(code: [true, false, false, false, false, false])
        }
        .padding()
    }
}
