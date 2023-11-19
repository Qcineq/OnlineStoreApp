//
//  FooterView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 19/11/2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Salon Broni - Twój sklep z bronią w Warszawie")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-main-scaled")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Wszelkie prawa zastrzeżone")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

#Preview {
    FooterView()
}
