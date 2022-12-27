//
//  ProductDetailsView.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct ProductDetailsView: View {
    
    @State private var quantity: Int = 1
    @EnvironmentObject private var router: Router
    
    var product: ProductItemViewModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                TabView {
                    ForEach(product.images, id: \.self) { imageUrlString in
                        AsyncImage(url: URL(string: imageUrlString)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            Rectangle()
                                .frame(height: 200)
                                .redacted(reason: RedactionReasons.privacy)
                        }
                    }
                }
                .tabViewStyle(.page)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(product.title)
                            .font(.title)
                            .fontDesign(.rounded)
                            .bold()
                        Spacer()
                        Image(systemName: "heart")
                            .font(.title)
                            .foregroundColor(.red)
                    }
                    
                    HStack(spacing: 0) {
                        Text("🌟 \(product.rating)")
                        Text(" | ")
                        Text("\(product.stock) items in stock")
                            .foregroundColor(.blue)
                    }
                    .font(.caption2)
                    
                    Text(product.description)
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .lineSpacing(1.4)
                        .padding(.vertical, 8)
                    HStack {
                        Text("$\(product.price)")
                            .font(.title3)
                            .fontDesign(.rounded)
                            .bold()
                        Spacer()
                        
                        HStack {
                            Button("-") {
                                if quantity == 1 { return }
                                quantity -= 1
                            }
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .bold()
                            
                            Text("\(quantity)")
                            
                            Button("+") {
                                if quantity == 100 { return }
                                quantity += 1
                            }
                            .padding(10)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .bold()
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        router.homeTabPath = NavigationPath()
                    } label: {
                        Text("Add To Bag")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
                Spacer()
            }
            .navigationTitle("iPhone 9")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            setupAppearance()
        }
    }
    
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .systemBlue
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.systemBlue.withAlphaComponent(0.2)
    }
}

//struct ProductDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack {
//            ProductDetailsView(product: ProductItemViewModel(product: <#T##ProductItem#>))
//                .navigationTitle("iPhone 9")
//                .navigationBarTitleDisplayMode(.inline)
//        }
//    }
//}
