//
//  Profile.swift
//  Nile - The new shopping experience
//
//  Created by Simran Preet Narang on 2022-12-24.
//

import SwiftUI

struct ProfileTabView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("ProfileTabView")
                .font(.system(size: 36, design: .rounded))
                .bold()
            Spacer()
        }
        .navigationTitle("Profile")
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabView()
    }
}
