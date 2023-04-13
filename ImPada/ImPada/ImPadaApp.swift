//
//  ImPadaApp.swift
//  ImPada
//
//  Created by vivi on 16/03/23.
//

import SwiftUI

@main
struct ImPadaApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
