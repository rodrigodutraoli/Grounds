//
//  WhatsNewListScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct WhatsNewListScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        NavigationView {
            List {
                DisplayBottomSheetScreen(router: router)
                FixedGridScreen(router: router)
            }
            .navigationTitle("What's new in iOS 16")
        }.navigationViewStyle(.stack)
    }
}
