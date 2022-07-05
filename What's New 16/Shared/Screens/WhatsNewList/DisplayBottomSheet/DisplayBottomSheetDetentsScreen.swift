//
//  DisplayBottomSheetDetentsScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct DisplayBottomSheetDetentsScreen: View {
    let description: String
    let detents: Set<PresentationDetent>
    @State var router: WhatsNewRouter?
    @State var showingSheet: Bool = false
    
    var body: some View {
        VStack {
            Button(action: {
                showingSheet.toggle()
            }) {
                Text("Present Sheet!")
            }
            .sheet(isPresented: $showingSheet) {
                Text(description)
                    .presentationDetents(detents)
            }
        }
    }
}
