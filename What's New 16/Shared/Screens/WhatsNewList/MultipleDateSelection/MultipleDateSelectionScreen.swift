//
//  MultipleDateSelectionScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct MultipleDateSelectionScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Multiple Date Selection")) {
            NavigationLink(destination: router.multipleDateSelectionSimpleScreen()) {
                Text("Simple")
            }
        }
    }
}
