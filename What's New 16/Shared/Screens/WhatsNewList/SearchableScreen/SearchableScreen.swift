//
//  SearchableScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct SearchableScreen: View {
    @StateObject var router: WhatsNewRouter
    
    var body: some View {
        Section(header: Text("Searchable")) {
            NavigationLink(destination: router.searchableSimpleScreen()) {
                Text("Simple")
            }
        }
    }
}
