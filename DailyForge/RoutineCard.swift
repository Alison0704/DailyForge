//
//  RoutineCard.swift
//  DailyForge
//
//  Created by Alison Emilien on 2025-06-28.
//

import Foundation
import SwiftUI

struct Routine: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    var isCompleted: Bool
}

struct RoutineCard: View {
    @Binding var routine: Routine

    var body: some View {
        HStack {
            Text(routine.icon)
                .font(.largeTitle)
                .padding()

            VStack(alignment: .leading) {
                Text(routine.title)
                    .font(AppFonts.header(size: 20))
                    .foregroundColor(.primary)
                Text("Tap to toggle")
                    .font(AppFonts.body(size: 14))
                    .foregroundColor(.gray)
            }

            Spacer()

            Button(action: {
                routine.isCompleted.toggle()
            }) {
                Image(systemName: routine.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(routine.isCompleted ? AppColors.success : AppColors.neutral)
                    .font(.title)
            }
            .buttonStyle(.plain)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(AppColors.background)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 2)
        )
        .padding(.horizontal)
    }
}
