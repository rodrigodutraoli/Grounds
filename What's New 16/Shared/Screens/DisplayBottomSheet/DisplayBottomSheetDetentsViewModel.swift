//
//  DisplayBottomSheetDetentsViewModel.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import Foundation
import Combine
import SwiftUI

class DisplayBottomSheetDetentsViewModel: BaseViewModel<Services>, ObservableObject {
    @Published var showingSheet: Bool = false
    
    override init(services: Services) {
        super.init(services: services)
        Logger.print("init:\(#file)")
    }
    
    deinit {
        Logger.print("deinit:\(#file)")
    }
}

