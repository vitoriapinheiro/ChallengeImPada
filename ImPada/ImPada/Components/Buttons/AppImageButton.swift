//
//  Button.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct AppImageButton: View {
    let icon: String
    let nextView: () -> AnyView
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        NavigationLink(
            destination: {
                nextView()
            }, label: {
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height)
            }
        )
    }
}
