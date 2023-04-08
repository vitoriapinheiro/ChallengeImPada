//
//  ActionImageButton.swift
//  ImPada
//
//  Created by vivi on 30/03/23.
//
import SwiftUI

struct ActionImageButton: View {
    let icon: String
    let action: () -> Void
    let height: CGFloat
    let width: CGFloat
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack{
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height)
            }
        }
        )
    }
}
