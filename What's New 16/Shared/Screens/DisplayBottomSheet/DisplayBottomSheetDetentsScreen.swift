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
    @StateObject var viewModel: DisplayBottomSheetDetentsViewModel
    
    var body: some View {
        VStack {
            Button(action: {
                viewModel.showingSheet.toggle()
            }) {
                Text("Present Sheet!")
            }
            .sheet(isPresented: $viewModel.showingSheet) {
                Text(description)
                    .presentationDetents(detents)
            }
        }
    }
}
