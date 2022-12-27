//
//  ProductsAPIManager.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation

final class ProductsAPIManager {
    
    static let shared = ProductsAPIManager()
    
    private init() { }
    
    func fetchProducts() async throws -> FetchProductsResponse {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            return FetchProductsResponse(products: [], total: 0, skip: 0, limit: 0)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(FetchProductsResponse.self, from: data)
    }
}
