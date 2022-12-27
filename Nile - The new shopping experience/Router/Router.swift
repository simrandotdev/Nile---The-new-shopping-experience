//
//  Router.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation
import SwiftUI

class Router: ObservableObject {
    
    @Published var homeTabPath = NavigationPath()
    @Published var favoritesTabPath = NavigationPath()
    @Published var ordersTabPath = NavigationPath()
    @Published var profileTabPath = NavigationPath()
    
    
    /// This function should get called from different Views and tell where to `Route`
    func routeTo(_ value: Router.Paths) {
        switch value {
        case .productDetails(_):
            homeTabPath.append(value)
        case .rootHomeView:
            homeTabPath = NavigationPath()
        }
    }
    
    /// This function just returns the View.body of defined for a `Path`
    func handleRoutes(_ value: Router.Paths) -> some View {
        value.body
    }
}
