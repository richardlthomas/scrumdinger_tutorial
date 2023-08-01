//
//  ScrumSheet.swift
//  ScrumdingerTutorial
//
//  Created by Rick Thomas on 7/28/23.
//

import SwiftUI

struct NewScrumSheet: View {
    @Binding var isPresentingSheet: Bool
    @State private var newScrum: DailyScrum = DailyScrum.emptyScrum
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPre
                        }
                    }
                    
                    Button(action: {}) {
                        Text("Add")
                    }
                }
        }
    }
}

#Preview {
    NewScrumSheet(isPresentingSheet: .constant(true))
}
