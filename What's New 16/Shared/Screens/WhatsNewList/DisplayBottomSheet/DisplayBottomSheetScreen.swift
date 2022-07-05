//
//  DisplayBottomSheetScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct DisplayBottomSheetScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Display Bottom Sheet - Detents")) {
            NavigationLink(destination: router.detentsScreen(description: "[.medium, .large]", detents: [.medium, .large])) {
                Text("[.medium, .large]")
            }
            
            NavigationLink(destination: router.detentsScreen(description: "[.fraction(0.15)]", detents: [.fraction(0.15)])) {
                Text("[.fraction(0.15)]")
            }
            
            let heights = stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0) }
            NavigationLink(destination: router.detentsScreen(description: "Fraction 0.1 <= n <= 1, step 0.1", detents: Set(heights))) {
                Text("Fraction 0.1 <= n <= 1, step 0.1")
            }
        }
    }
}


