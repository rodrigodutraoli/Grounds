//
//  What_s_New_16App.swift
//  Shared
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import SwiftUI

@main
struct What_s_New_16App: App {
    var body: some Scene {
        WindowGroup {
            AppRouterView(router: AppRouter(services: AppServices()))
        }
    }
}
