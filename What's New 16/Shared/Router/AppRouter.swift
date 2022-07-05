//
//  AppRouter.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

enum AppRouterScreen {
    case whatsNew
}

class AppRouter: ObservableObject {
    
    // MARK: -  Published vars
    @Published var screen: AppRouterScreen = .whatsNew
    
    // MARK: - Private vars
    private var services: Services
    
    lazy private var whatsNewRouter: WhatsNewRouter = {
        return WhatsNewRouter(services: self.services)
    }()
    
    // MARK: - Internal vars
    
    // MARK: - Initialization
    init(services: Services) {
        self.services = services
        Logger.print("init:\(#file)")
        
        self.setBindings()
    }
    
    deinit {
        Logger.print("deinit:\(#file)")
    }
    
    func setBindings() {
        
    }
    
    // MARK: - Methods
    @ViewBuilder func whatsNewScreen() -> some View {
        WhatsNewView(router: self.whatsNewRouter)
    }
}

struct AppRouterView: View {
    @StateObject var router: AppRouter
    
    var body: some View {
        switch self.router.screen {
        case .whatsNew:
            self.router.whatsNewScreen()
        }
    }
}
