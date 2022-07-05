//
//  TapLocationGlobalLocationScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct TapLocationGlobalLocationScreen: View {
    @StateObject var router: WhatsNewRouter
    @State private var location: CGPoint? = nil
    
    var body: some View {
        ZStack {
            Color.red
            if let location = location {
                Circle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                    .position(x: location.x, y: location.y)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onTapGesture(coordinateSpace: .global) { location in
            withAnimation {
                self.location = location
            }
            
            print("Tapped at \(location)")
        }
    }
}

