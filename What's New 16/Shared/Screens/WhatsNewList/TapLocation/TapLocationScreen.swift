//
//  TapLocationScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct TapLocationScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Tap Location")) {
            NavigationLink(destination: router.tapLocationExactLocationScreen()) {
                Text("Exact location")
            }
            
            NavigationLink(destination: router.tapLocationGlobalLocationScreen()) {
                Text("Glocal location")
            }
        }
    }
}


