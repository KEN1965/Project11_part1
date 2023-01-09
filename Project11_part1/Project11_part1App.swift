//
//  Project11_part1App.swift
//  Project11_part1
//
//  Created by K.Takahama on R 5/01/09.
//

import SwiftUI

@main
struct Project11_part1App: App {
    
    @StateObject private var dataController = DataCOntroller()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
