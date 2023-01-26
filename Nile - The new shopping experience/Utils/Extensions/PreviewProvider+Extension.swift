//
//  PreviewProvider+Extension.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2023-01-26.
//

import SwiftUI

extension PreviewProvider {
    
    static var mockProducts: [ProductItem] {
        do {
            let res: FetchProductsResponse = try StaticJSONMapper.decode(file: "products")
            return res.products
        } catch {
            print("❌ Error in \(#function) ", error)
            return []
        }
    }
    
    static var mockProduct: ProductItem {
        mockProducts.first ?? ProductItem(id: 1,
                                          title: "iPhone 9",
                                          description: "An apple mobile which is nothing like apple",
                                          price: 549,
                                          discountPercentage: 12.96,
                                          rating: 4.6,
                                          stock: 469,
                                          brand: "Apple",
                                          category: "smartphones",
                                          thumbnail: "https://i.dummyjson.com/data/products/1/thumbnail.jpg",
                                          images: [
                                            "https://i.dummyjson.com/data/products/2/1.jpg",
                                            "https://i.dummyjson.com/data/products/2/2.jpg",
                                            "https://i.dummyjson.com/data/products/2/3.jpg",
                                            "https://i.dummyjson.com/data/products/2/thumbnail.jpg"
                                         ])
    }
}
