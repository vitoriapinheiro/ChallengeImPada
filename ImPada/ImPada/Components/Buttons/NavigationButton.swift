//
//  AppButton.swift
//  ImPada
//
//  Created by vivi on 29/03/23.
//

import SwiftUI

struct NavigationButton: View {
    let icon: String
    let nextView: () -> AnyView
    let width: CGFloat
    let height: CGFloat
    let title: String
    let size: CGFloat
    
    var body: some View {
        NavigationLink(
            destination: {
                nextView()
            }, label: {
                ZStack{
                    Image(icon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: width, height: height)
                    Text(title)
                        .font(.custom("Fredoka-Medium" ,size: self.size))
                        .foregroundColor(Color.appWhite)
                    
                }
            }
        )
    }
}
