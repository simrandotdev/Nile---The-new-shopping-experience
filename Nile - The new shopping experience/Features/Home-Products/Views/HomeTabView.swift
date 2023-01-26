//
//  HomeTabView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct HomeTabView: View {
    
    var body: some View {
        ProductsListView()
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeTabView()
                .navigationTitle("Home")
        }
    }
}
