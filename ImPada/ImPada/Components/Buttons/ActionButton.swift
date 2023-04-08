//
//  ActionButton.swift
//  ImPada
//
//  Created by vivi on 30/03/23.
//

import SwiftUI

struct ActionButton: View {
    let title: String
    let icon: String
    let action: () -> Void
    let height: CGFloat
    let width: CGFloat
    let size: CGFloat
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack{
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height)
                Text(title)
                    .font(.custom("Fredoka-Medium", size: size))
                    .bold()
                    .foregroundColor(Color.appBlack)
                            }
        }
        )
    }
}
