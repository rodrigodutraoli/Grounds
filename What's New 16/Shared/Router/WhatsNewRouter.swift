//
//  TestRouter.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import Foundation
import SwiftUI

class WhatsNewRouter: ObservableObject {
    @ViewBuilder func whatsNewListScreen() -> some View {
        WhatsNewListScreen(router: self)
    }
    
    @ViewBuilder func detentsScreen(description: String, detents: Set<PresentationDetent>) -> some View {
        DisplayBottomSheetDetentsScreen(description: description, detents: detents, router: self)
    }
    
    @ViewBuilder func fixedGridBasicScreen() -> some View {
        FixedGridBasicScreen(router: self)
    }
    
    @ViewBuilder func fixedGridDifferentNumberCellsScreen() -> some View {
        FixedGridDifferentNumberCellsScreen(router: self)
    }
    
    @ViewBuilder func fixedGridWithouRowScreen() -> some View {
        FixedGridWithouRowScreen(router: self)
    }
    
    @ViewBuilder func fixedGridTicTacToeScreen() -> some View {
        FixedGridTicTacToeScreen(router: self)
    }
    
    @ViewBuilder func fixedGridChessboardScreen() -> some View {
        FixedGridChessboardScreen(router: self)
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
        router.whatsNewListScreen()
    }
}
