//
//  ContentView.swift
//  ImPada
//
//  Created by vivi on 16/03/23.
//

import SwiftUI
import SpriteKit


struct ContentView: View {
        
    var body: some View {

        NavigationView{
            NewBrailleView(codeLeft: numbers[3].codeLeft, codeRight: numbers[3].codeRight)
        }.navigationViewStyle(.stack)
            .ignoresSafeArea()
            .navigationBarBackButtonHidden()
            .statusBarHidden()
    }
}
