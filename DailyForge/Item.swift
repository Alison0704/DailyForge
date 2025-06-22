//
//  Item.swift
//  DailyForge
//
//  Created by Alison Emilien on 2025-06-22.
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
