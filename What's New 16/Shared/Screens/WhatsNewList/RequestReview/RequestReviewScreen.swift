//
//  RequestReviewScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct RequestReviewScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Request Review")) {
            NavigationLink(destination: router.requestReviewButtonScreen()) {
                Text("Button")
            }
        }
    }
}
