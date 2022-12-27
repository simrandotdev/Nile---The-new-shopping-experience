//
//  Router+Path.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation
import SwiftUI

extension Router {
    
    /// Define all the paths and their corresponding bodies
    enum Paths: Hashable, View {
        
        case productDetails(ProductItemViewModel)
        case rootHomeView
        
        /// Here we define what View.body to show for a particular `Path`
        var body: some View {
            switch self {
            case .productDetails(let product):
                return AnyView(ProductDetailsView(product: product))
            case .rootHomeView:
                return AnyView(HomeTabView())
            }
        }
    }
}
