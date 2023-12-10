//
//  ProductItemView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 30/11/2023.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    
    let product: Product
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(.white)
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        })
    }
}

#Preview {
    ProductItemView(product: products[0])
        .background(colorBackground)
}
