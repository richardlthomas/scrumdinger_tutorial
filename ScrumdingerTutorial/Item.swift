//
//  Item.swift
//  scrumdinger_tutorial
//
//  Created by Rick Thomas on 7/27/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
