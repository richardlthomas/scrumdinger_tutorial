//
//  scrumdinger_tutorialApp.swift
//  scrumdinger_tutorial
//
//  Created by Rick Thomas on 7/27/23.
//

import SwiftUI
import SwiftData

@main
struct scrumdinger_tutorialApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
