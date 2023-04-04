//
//  ContentView.swift
//  ImPada
//
//  Created by vivi on 16/03/23.
//

import SwiftUI

//protocol GameComponent {
//
//}
//
//struct FirstGameView: View, GameComponent {
//
//    var body: some View {
//        VStack {
//            Text("oi")
//        }
//    }
//
//}
//
//struct SecondGameView: View, GameComponent {
//
//    var body: some View {
//        VStack {
//            Text("oi 1")
//        }
//    }
//
//}


//struct SecondGameView: View, GameComponent {
//
//}





//struct ContentView<T: GameComponent & View >: View {
//
//    var gameView: T
//
//    var body: some View {
//        VStack {
//            gameView.body
//        }
//        .padding()
////        .environmentObject()
//    }
//}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView<FirstGameView>(gameView: FirstGameView())
//    }
//}

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
//            NumberView()
        }.navigationViewStyle(.stack)
            .ignoresSafeArea()
            .navigationBarBackButtonHidden()
            .statusBarHidden()
    }
}
