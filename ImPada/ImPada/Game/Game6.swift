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
    
    var body: some View {
        GeometryReader{ reader in
            VStack{
                Spacer()
                    .frame(height: 350)
                HStack{
                    
                    ActionImageButton(icon: "map 1",
                                      action: {},
                                      height: 200,
                                      width: 200
                    )
                    ActionImageButton(icon: "map 4",
                                      action: {},
                                      height: 200,
                                      width: 200
                    )
                    ActionImageButton(icon: "map 5",
                                      action: {},
                                      height: 200,
                                      width: 200
                    )
                }//.background(Color.red)
                
                Spacer()
                    .frame(height: 4)
                
                HStack{
                    ActionImageButton(icon: "map 2",
                                      action: {},
                                      height: 200,
                                      width: 200
                    )
                    ActionImageButton(icon: "map 3",
                                      action: {},
                                      height: 200,
                                      width: 200
                    )
                    ActionImageButton(icon: "map 6",
                                      action: {},
                                      height: 200,
                                      width: 200
                    )
                    
                }//.background(Color.blue)
                    
                
                
                
            }.frame(height: 170).padding(.leading, 200)
                                .onAppear{
                                    wonGame = false
            }
        }
    }
}
    



