//
//  ProductItem.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation

struct ProductItem: Codable {
    let id: Int
    let title: String
    let description: String
    let price: Int
    let discountPercentage: Double
    let rating: Double
    let stock: Int
    let brand: String
    let category: String
    let thumbnail: String
    let images: [String]
}
