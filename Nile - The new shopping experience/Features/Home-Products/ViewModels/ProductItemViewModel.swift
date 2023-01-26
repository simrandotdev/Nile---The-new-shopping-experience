//
//  ProductItemViewModel.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-28.
//

import Foundation

final class ProductItemViewModel: Identifiable, Hashable {
    
    static func == (lhs: ProductItemViewModel, rhs: ProductItemViewModel) -> Bool {
        return lhs.product.id == rhs.product.id
    }
    
    func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
    
    private(set) var product: ProductItem
    
    init(product: ProductItem) {
        self.product = product
    }
    
    var id: Int {
        return product.id
    }
    
    var title: String {
        return product.title
    }
    
    var description: String {
        return product.description
    }
    
    var price: Double {
        return Double(product.price)
    }
    
    var rating: Double {
        return product.rating
    }
    
    var thumbnail: String {
        return product.thumbnail
    }
    
    var stock: Int {
        return product.stock
    }
    
    var brand: String {
        return product.brand
    }
    
    var category: String {
        return product.category
    }
    
    var images: [String] {
        return product.images
    }
}
