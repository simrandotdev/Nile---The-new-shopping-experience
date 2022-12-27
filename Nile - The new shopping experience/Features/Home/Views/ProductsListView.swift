//
//  ProductsListView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct ProductsListView: View {
    @State private var searchText: String = ""
    
    @EnvironmentObject private var router: Router
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [.init(.flexible()), .init(.flexible())]) {
                    ForEach(0..<20) { index in
                        VStack(alignment: .leading) {
                            Image("product_thumbnail")
                                .resizable()
                                .scaledToFill()
                            
                            VStack(alignment: .leading, spacing: 4) {
                                HStack {
                                    Text("Product Title \(index)")
                                        .font(.system(size: 14, design: .rounded).bold())
                                    Spacer()
                                    Text("4.96 🌟")
                                        .font(.caption2)
                                }
                                
                                Text("Category")
                                    .font(.caption)
                                    .fontWeight(.light)
                                    .foregroundColor(.gray)
                                    .padding(.bottom, 16)


                                HStack {
                                    Text("$199.99")
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
                            .padding(.horizontal, 4)
                            .padding(.bottom, 8)
                        }
                        .background(Color.gray.opacity(0.12))
                        .cornerRadius(6)
                        .padding(0)
                        .onTapGesture {
                            router.routeTo(Router.Paths.productDetails("Product Title \(index)"))
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
