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
    
    var productTitle: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                TabView {
                    ForEach(0..<4) { _ in
                        Image("product_thumbnail")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .tabViewStyle(.page)
                .frame(height: 220)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(productTitle)
                            .font(.title)
                            .fontDesign(.rounded)
                            .bold()
                        Spacer()
                        Image(systemName: "heart")
                            .font(.title)
                            .foregroundColor(.red)
                    }
                    
                    HStack(spacing: 0) {
                        Text("🌟 4.96")
                        Text(" | ")
                        Text("24 items in stock")
                            .foregroundColor(.blue)
                    }
                    .font(.caption2)
                    
                    Text("SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip.")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .lineSpacing(1.4)
                        .padding(.vertical, 8)
                    HStack {
                        Text("$199.99")
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
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProductDetailsView(productTitle: "Product Title")
                .navigationTitle("iPhone 9")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}
