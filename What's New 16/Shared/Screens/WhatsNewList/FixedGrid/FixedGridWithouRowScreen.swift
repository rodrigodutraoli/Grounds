//
//  FixedGridWithouRowScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct FixedGridWithouRowScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Grid {
            GridRow {
                Text("Food")
                Text("$200")
            }
            
            GridRow {
                Text("Rent")
                Text("$800")
            }
            
            GridRow {
                Text("Candles")
                Text("$3600")
            }
            
            Divider()
            
            GridRow {
                Text("$4600")
                    .gridCellColumns(2)
                    .multilineTextAlignment(.trailing)
            }
            
        }
        .font(.title)
            
    }
}
