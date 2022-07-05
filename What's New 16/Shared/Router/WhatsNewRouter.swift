//
//  TestRouter.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import Foundation
import SwiftUI

class WhatsNewRouter: ObservableObject {
    @ViewBuilder func detentsScreen(description: String, detents: Set<PresentationDetent>) -> some View {
        DisplayBottomSheetDetentsScreen(description: description, detents: detents, router: self, viewModel: DisplayBottomSheetDetentsViewModel(services: self.services))
    }
    
    private var services: Services
    
    init(services: Services) {
        Logger.print("init:\(#file)")
        
        self.services = services
    }
    
    deinit {
        Logger.print("deinit:\(#file)")
    }
}

struct WhatsNewView: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        NavigationView {
            List {
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
            .navigationTitle("What's new in iOS 16")
        }.navigationViewStyle(.stack)
    }
}
