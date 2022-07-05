//
//  TapLocationExactLocationScreen.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

struct TapLocationExactLocationScreen: View {
    @StateObject var router: WhatsNewRouter
    @State private var location: CGPoint? = nil
    
    var body: some View {
        ZStack {
            Circle()
                .fill(.red)
                .onTapGesture { location in
                    withAnimation {
                        self.location = location
                    }
                    
                    print("Tapped at \(location)")
                }
                .overlay {
                    if let location = location {
                        Circle()
                            .fill(.blue)
                            .frame(width: 50, height: 50)
                            .position(x: location.x, y: location.y)
                        
                    }
                }
        }
    }
}


#if DEBUG
struct TapLocationExactLocationScreen_Previews: PreviewProvider {
    static var previews: some View {
        TapLocationExactLocationScreen(router: WhatsNewRouter(services: AppServices()))
    }
}
#endif
