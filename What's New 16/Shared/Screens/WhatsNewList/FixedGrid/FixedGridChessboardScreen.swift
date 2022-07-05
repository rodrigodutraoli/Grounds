//
//  FixedGridChessboardScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct FixedGridChessboardScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Grid(horizontalSpacing: 0, verticalSpacing: 0) {
            ForEach(0..<8) { row in
                GridRow {
                    ForEach(0..<8) { col in
                        if (row + col).isMultiple(of: 2) {
                            Rectangle()
                                .fill(.black)
                        } else {
                            Rectangle()
                                .fill(.white)
                        }
                    }
                }
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .border(.black, width: 1)
        .padding()
    }
}
