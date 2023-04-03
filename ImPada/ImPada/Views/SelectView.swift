//
//  SelectView.swift
//  ImPada
//
//  Created by vivi on 22/03/23.
//

import SwiftUI

struct SelectView: View {
    @Binding var level: Int
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var Number: FetchedResults<Number>
    
    var body: some View {
        VStack{
            Text("Números")
                .font(.custom("Fredoka-Medium" ,size: 56))
                .foregroundColor(Color.appBlack)
                .padding(.top, 70)
            HStack {
                if(level > 1){
                    ActionImageButton(
                        icon: "LeftArrow",
                        action: {withAnimation{
                            if level > 1{
                                level -= 1
                            }
                        }},
                        height: 140,
                        width: 160
                    )
                    .padding(.trailing, 100)
                }
                ZStack{
                    NavigationImageButton(
                        icon: "Cards",
                        nextView: {AnyView(NumberView(level: $level))},
                        width: 360,
                        height: 520
                    )
                    Image("One")
                        .frame(width: 110, height: 235)
                }
                if(level < 9 ){
                    ActionImageButton(
                        icon: "RightArrow",
                        action: {withAnimation{
                            if level < 9 {
                                level += 1
                            }
                        }},
                        height: 140,
                        width: 160
                    )
                        .padding(.leading, 100)
                }
            }
            .padding(.bottom, 170)
        }
        .background(
            Image("BlueScenario")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped())
        .ignoresSafeArea(.all)
        
    }
}
