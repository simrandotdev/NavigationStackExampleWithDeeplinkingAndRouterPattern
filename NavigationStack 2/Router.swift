//
//  Router.swift
//  NavigationStack 2
//
//  Created by Simran Preet Narang on 2022-12-18.
//

import Foundation
import SwiftUI


class Router: ObservableObject {
    @Published var path = NavigationPath()
    
    func reset() {
        path = NavigationPath()
    }
}
