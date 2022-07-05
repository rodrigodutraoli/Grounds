//
//  FixedGridDifferentNumberCellsScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct FixedGridDifferentNumberCellsScreen: View {
    @StateObject var router: WhatsNewRouter
    
    @State private var redScore = 0
    @State private var blueScore = 0
    
    var body: some View {
        Grid {
            GridRow {
                Text("Red")
                
                ForEach(0..<redScore, id: \.self) { _ in
                    Rectangle()
                        .fill(.red)
                        .frame(width: 20, height: 20)
                }
            }
            
            GridRow {
                Text("Blue")
                
                ForEach(0..<blueScore, id: \.self) { _ in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 20, height: 20)
                }
            }
        }
        .font(.title)
        
        Button("Add to Red") { redScore += 1 }
        Button("Add to Blue") { blueScore += 1 }
    }
}
