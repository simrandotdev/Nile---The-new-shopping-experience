//
//  FavoritesTabView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct FavoritesTabView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("FavoritesTabView")
                .font(.system(size: 36, design: .rounded))
                .bold()
            Spacer()
        }
        .navigationTitle("Favorites")
    }
}

struct FavoritesTabView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesTabView()
    }
}
