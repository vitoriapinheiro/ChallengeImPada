//
//  GameSix.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game6: View {
    @Binding var level: Int
    @State var wonGame: Bool = false
    @State var continents: [Bool] = [false, false, false, false, false, false]
    
    var body: some View {
        GeometryReader{ reader in
            VStack{
                Spacer()
                    .frame(height: 350)
                HStack{
                    ZStack{
                        ActionImageButton(icon: "map 1",
                                          action: {checkContinents(index: 0)},
                                          height: 200,
                                          width: 200
                        )
                        if(continents[0]){
                            Image("FlagDino")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82, height: 85)
                        }
                    }.frame(width: 200, height: 200)
                    ZStack{
                        ActionImageButton(icon: "map 4",
                                          action: {checkContinents(index: 1)},
                                          height: 200,
                                          width: 200
                        )
                        if(continents[1]){
                            Image("FlagDino")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82, height: 85)
                        }
                    }.frame(width: 200, height: 200)
                    ZStack{
                        ActionImageButton(icon: "map 5",
                                          action: {checkContinents(index: 2)},
                                          height: 200,
                                          width: 200
                        )
                        if(continents[2]){
                            Image("FlagDino")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82, height: 85)
                        }
                    }.frame(width: 200, height: 200)
                }
                
                Spacer()
                    .frame(height: 4)
                
                HStack{
                    ZStack{
                        ActionImageButton(icon: "map 2",
                                          action: {checkContinents(index: 3)},
                                          height: 200,
                                          width: 200
                        )
                        if(continents[3]){
                            Image("FlagDino")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82, height: 85)
                        }
                    }.frame(width: 200, height: 200)
                    ZStack{
                        ActionImageButton(icon: "map 3",
                                          action: {checkContinents(index: 4)},
                                          height: 200,
                                          width: 200
                        )
                        if(continents[4]){
                            Image("FlagDino")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82, height: 85)
                        }
                    }.frame(width: 200, height: 200)
                    ZStack{
                        ActionImageButton(icon: "map 6",
                                          action: {checkContinents(index: 5)},
                                          height: 200,
                                          width: 200
                        )
                        if(continents[5]){
                            Image("FlagDino")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 82, height: 85)
                        }
                    }.frame(width: 200, height: 200)
                    
                }
                NavigationLink(destination: CongratsView(level: $level), isActive: $wonGame){}
            }.frame(height: 170).padding(.leading, 200)
                                .onAppear{
                                    wonGame = false
            }
        }
    }
    
    func checkContinents(index: Int){
        self.continents[index] = true
        if(continents[0] && continents[1] && continents[2] && continents[3] && continents[4] && continents[5]){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                self.wonGame = true
            }
        }
    }
    
}
    



