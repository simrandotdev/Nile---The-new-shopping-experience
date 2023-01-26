//
//  ProductsListView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct ProductsListView: View {
    @State private var searchText: String = ""
    @StateObject private var vm = ProductsListViewModel()
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [.init(.flexible())]) {
                    ForEach(vm.productsListViewModel) { product in
                        ProductItemView(product: product)
                            .onTapGesture {
                                router.routeTo(Router.Paths.productDetails(product))
                            }
                    }
                }
            }
            .padding(8)
        }
        .navigationTitle("Home")
        .searchable(text: $searchText, prompt: Text("Search products"))
    }
}

struct ProductsListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListView()
    }
}
