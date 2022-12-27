//
//  Orders.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct OrdersTabView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("OrdersTabView")
                .font(.system(size: 36, design: .rounded))
                .bold()
            Spacer()
        }
        .navigationTitle("Orders")
    }
}

struct Orders_Previews: PreviewProvider {
    static var previews: some View {
        OrdersTabView()
    }
}
