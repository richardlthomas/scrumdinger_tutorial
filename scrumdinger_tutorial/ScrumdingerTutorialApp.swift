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
    @StateObject private var store = ScrumStore()

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
            .task {
                do {
                    try await store.load()
                } catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}
