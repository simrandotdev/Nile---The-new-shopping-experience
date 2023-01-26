//
//  ProductItemView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2023-01-26.
//

import SwiftUI

struct ProductItemView: View {
    
    var product: ProductItemViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(url: URL(string: product.thumbnail)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fit)
            } placeholder: {
                Rectangle()
                    .frame(height: 110)
                    .redacted(reason: RedactionReasons.privacy)
            }
            
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(product.title)
                        .font(.system(size: 14, design: .rounded).bold())
                    Spacer()
                    Text("\(product.rating) 🌟")
                        .font(.caption2)
                }
                
                Text(product.category.capitalized)
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.bottom, 16)
                
                
                HStack {
                    Text(String(format: "$%.2f", product.price))
                        .font(.caption)
                        .fontDesign(.rounded)
                        .bold()
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                    }
                    
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 8)
        }
        .background(Color.gray.opacity(0.12))
        .cornerRadius(6)
        .padding(8)
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: ProductItemViewModel(product: mockProduct))
            .previewLayout(.sizeThatFits)
    }
}
