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
        return try await URLSession.shared.object(from: url, type: FetchProductsResponse.self)
    }
}


extension URLSession {
    
    func object<T: Codable>(from url: URL, type: T.Type) async throws -> T {
        let (data, _) = try await data(from: url)
        return try JSONDecoder().decode(type.self, from: data)
    }
}
