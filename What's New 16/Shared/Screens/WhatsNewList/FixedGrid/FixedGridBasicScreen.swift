//
//  FixedGridBasicScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct FixedGridBasicScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Grid {
            GridRow {
                Text("Top Leading")
                    .background(.red)
                
                Text("Top Trailing")
                    .background(.orange)
            }
            
            GridRow {
                Text("Bottom Leading")
                    .background(.green)
                
                Text("Bottom Trailing")
                    .background(.blue)
            }
        }
        .font(.title)
    }
}
