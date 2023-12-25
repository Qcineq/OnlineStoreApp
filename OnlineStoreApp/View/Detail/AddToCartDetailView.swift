//
//  AddToCartDetailView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 25/12/2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Spacer()
            Text("Dodaj do koszyka".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(Color.orange)
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
}
