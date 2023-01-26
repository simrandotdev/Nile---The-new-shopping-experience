//
//  ProductsListViewModels.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation

final class ProductsListViewModel: ObservableObject {
    
    @Published var productsListViewModel: [ProductItemViewModel] = []
    
    init() {
        Task { await fetchProducts() }
    }
    
    
    @MainActor
    func fetchProducts() async {
        
        do {
            productsListViewModel = try await ProductsAPIManager
                                                .shared
                                                .fetchProducts()
                                                .products
                                                .map{ ProductItemViewModel(product: $0) }
            
        } catch {
            print("❌ Error in \(#function) ", error)
        }
    }
}
