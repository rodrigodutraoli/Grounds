//
//  ShareContentScreen.swift
//  Tests iOS
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct ShareContentScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Share Content")) {
            NavigationLink(destination: router.shareContentSimpleScreen()) {
                Text("Simple")
            }
            
            NavigationLink(destination: router.shareContentPreviewScreen()) {
                Text("Preview")
            }
            
        }
    }
}
