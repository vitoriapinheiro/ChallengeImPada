//
//  ImPadaApp.swift
//  ImPada
//
//  Created by vivi on 16/03/23.
//

import SwiftUI

@main
struct ImPadaApp: App {
    var body: some Scene {
        WindowGroup {
            HStack(spacing: 80){
                GridView(code: [false, false, true, true, true, true])
                GridView(code: [true, false, false, false, false, false])
            }
        }
    }
}
