//
//  MultipleDateSelectionSimpleScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct MultipleDateSelectionSimpleScreen: View {
    @StateObject var router: WhatsNewRouter
    
    @State var dates: Set<DateComponents> = []
    
    var body: some View {
        MultiDatePicker("Select your preferred dates", selection: $dates)
    }
}
