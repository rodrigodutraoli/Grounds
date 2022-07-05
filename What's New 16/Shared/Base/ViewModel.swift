//
//  ViewModel.swift
//  What's New 16
//
//  Created by Rodrigo Dutra de Oliveira on 7/5/22.
//

import Foundation
import Combine

open class BaseViewModel<S> {
    
    public var services: S
    
    public init(services: S) {
        self.services = services
    }
    
}
