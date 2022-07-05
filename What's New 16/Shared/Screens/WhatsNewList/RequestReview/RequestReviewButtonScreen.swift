//
//  RequestReviewButtonScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import StoreKit
import SwiftUI

struct RequestReviewButtonScreen: View {
    @Environment(\.requestReview) var requestReview
    
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Button("Review the app") {
            requestReview()
        }
    }
}
