//
//  ContentView.swift
//  ImPada
//
//  Created by vivi on 16/03/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var onboarding: Bool = false
    @FetchRequest(sortDescriptors: []) var Number: FetchedResults<Number>
        
    var body: some View {
        NavigationView{
            if(onboarding){
                HomeView(onboarding: $onboarding)
            } else {
                OnboardingView(onboarding: $onboarding)
            }
        }.navigationViewStyle(.stack)
            .ignoresSafeArea()
            .navigationBarBackButtonHidden()
            .statusBarHidden()
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
