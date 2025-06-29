//
//  Theme.swift
//  DailyForge
//
//  Created by Alison Emilien on 2025-06-28.
//

import Foundation
import SwiftUI

struct AppColors {
    static let primary = Color("Primary")        // Soft Navy
    static let accent = Color("Accent")          // Warm Coral
    static let background = Color("Background")  // Mist White
    static let success = Color("Success")        // Sage Green
    static let neutral = Color("Neutral")        // Pale Gray
}

struct AppFonts {
    static func header(size: CGFloat) -> Font {
        return Font.system(size: size, weight: .bold, design: .rounded)
    }

    static func body(size: CGFloat) -> Font {
        return Font.system(size: size, weight: .regular, design: .rounded)
    }
}
