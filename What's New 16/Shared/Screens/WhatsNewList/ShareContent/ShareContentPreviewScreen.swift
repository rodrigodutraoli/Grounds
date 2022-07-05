//
//  ShareContentPreviewScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct ShareContentPreviewScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        let link = URL(string: "https://github.com/rodrigodutraoli")!
        
        VStack(spacing: 20) {
            ShareLink(item: link) {
                Label(
                    "Share URL",
                    systemImage: "pencil"
                )
            }
        }
    }
}
