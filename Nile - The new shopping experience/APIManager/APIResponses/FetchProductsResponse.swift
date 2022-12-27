//
//  FetchProductsResponse.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation

struct FetchProductsResponse: Codable {
    let products: [ProductItem]
    let total: Int
    let skip: Int
    let limit: Int
}
