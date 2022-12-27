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
                LazyVGrid(columns: [.init(.flexible()), .init(.flexible())]) {
                    ForEach(vm.productsListViewModel) { product in
                        VStack(alignment: .leading) {
                            AsyncImage(url: URL(string: product.thumbnail)) { image in
                                image
                                    .resizable()
//                                    .frame(height: 110)
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
                                    Text("$\(product.price)")
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
