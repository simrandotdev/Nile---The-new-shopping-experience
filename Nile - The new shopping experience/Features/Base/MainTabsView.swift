//
//  ContentView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct MainTabsView: View {
    
    @StateObject private var router = Router()
    
    var body: some View {
        TabView {
            
            NavigationStack(path: $router.homeTabPath) {
                HomeTabView()
                    .navigationDestination(for: Router.Paths.self, destination: router.handleRoutes)
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            .environmentObject(router)
            
            
            
            NavigationStack(path: $router.favoritesTabPath) {
                FavoritesTabView()
                    .navigationDestination(for: Router.Paths.self, destination: router.handleRoutes)
            }
            .tabItem {
                Label("Favorites", systemImage: "star")
            }
            .environmentObject(router)
            
            
            
            NavigationStack(path: $router.ordersTabPath) {
                OrdersTabView()
                    .navigationDestination(for: Router.Paths.self, destination: router.handleRoutes)
            }
            .tabItem {
                Label("Orders", systemImage: "bag")
            }
            .environmentObject(router)
            
            
            
            NavigationStack(path: $router.profileTabPath) {
                ProfileTabView()
                    .navigationDestination(for: Router.Paths.self, destination: router.handleRoutes)
            }
            .tabItem {
                Label("Profile", systemImage: "person")
            }
            .environmentObject(router)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabsView()
    }
}
