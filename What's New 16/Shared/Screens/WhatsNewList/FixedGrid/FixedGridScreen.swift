//
//  FixedGridScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct FixedGridScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Fixed Grid")) {
            NavigationLink(destination: router.fixedGridBasicScreen()) {
                Text("Basic 2x2 grid")
            }
            
            NavigationLink(destination: router.fixedGridDifferentNumberCellsScreen()) {
                Text("Different number of cells")
            }
            
            NavigationLink(destination: router.fixedGridWithouRowScreen()) {
                Text("Withot Rows")
            }
            
            NavigationLink(destination: router.fixedGridTicTacToeScreen()) {
                Text("Tic Tac Toe")
            }
            
            NavigationLink(destination: router.fixedGridChessboardScreen()) {
                Text("Chessboard")
            }
            
            
            
            
        }
    }
}


