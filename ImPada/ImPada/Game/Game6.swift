//
//  GameSix.swift
//  ImPada
//
//  Created by vivi on 04/04/23.
//

import SwiftUI

struct Game6: View {
    @Binding var level: Int
    
    var body: some View {
        GeometryReader{ reader in
            ZStack{
                ActionImageButton(icon: "map 1",
                                  action: {},
                                  height: 489,
                                  width: 766
                )
                ActionImageButton(icon: "map 2",
                                  action: {},
                                  height: 489,
                                  width: 766
                )
                ActionImageButton(icon: "map 3",
                                  action: {},
                                  height: 489,
                                  width: 766
                )
                ActionImageButton(icon: "map 4",
                                  action: {},
                                  height: 489,
                                  width: 766
                )
                ActionImageButton(icon: "map 5",
                                  action: {},
                                  height: 489,
                                  width: 766
                )
                ActionImageButton(icon: "map 6",
                                  action: {},
                                  height: 489,
                                  width: 766
                )
            }
        }.frame( width: 766, height: 489)
    }
}
