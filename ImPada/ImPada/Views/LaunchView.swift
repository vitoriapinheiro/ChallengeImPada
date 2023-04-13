//
//  LaunchView.swift
//  ImPada
//
//  Created by vivi on 13/04/23.
//

import SwiftUI

struct LaunchView: View {
    @State private var isActive = false
    @State private var size = 0.3
    @State private var opacity = 0.5
    
    var body: some View {
        if(isActive){
            ContentView()
        } else {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Image("AppTitle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 425, height: 80)
                    }.scaleEffect(size)
                        .opacity (opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 1.5
                                self.opacity = 1.0
                            }
                        }
                    Spacer()
                }
                Spacer()
            }
            .background(Color.lightBlue)
            .ignoresSafeArea(.all)
            .onAppear {
                DispatchQueue.main.asyncAfter (deadline: .now() + 2.0) {
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}
