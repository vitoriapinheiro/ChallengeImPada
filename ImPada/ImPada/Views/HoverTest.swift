//
//  HoverTest.swift
//  ImPada
//
//  Created by michellyes on 28/03/23.
//

import SwiftUI

struct HoverTest: View {
    @State var scaleOnHover = 1.0
    var body: some View {
        VStack {
        
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .foregroundColor(.appRed)
                
                .onHover { hover in
                    withAnimation {
                        if hover {
                            scaleOnHover = 2.0
                        } else {
                            scaleOnHover = 1.0
                        }
                        
                    }
                    
                }
                
            Text("Hover Test")
        }
        .padding()
    }
}
