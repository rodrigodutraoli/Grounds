//
//  ShareContentSimpleScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct ShareContentSimpleScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        VStack(spacing: 20) {
            let link = URL(string: "https://github.com/rodrigodutraoli")!
            
            ShareLink(item: link)
            ShareLink("@rodrigodutraoli", item: link)
            ShareLink(item: link) {
                Label("@rodrigodutraoli", systemImage: "swift")
            }
        }
    }
}
