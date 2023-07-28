//
//  ScrumdingerTutorialApp.swift
//  ScrumdingerTutorial
//
//  Created by Rick Thomas on 7/27/23.
//

import SwiftUI
import SwiftData

@main
struct ScrumdingerTutorialApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
