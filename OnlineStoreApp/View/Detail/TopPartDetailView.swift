//
//  TopPartDetailView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 10/12/2023.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Cena")
                    .fontWeight(.semibold)
            
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.1, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(shop.selectedProduct?.image ?? sampleProduct.image)
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 0 : -35)
                    .shadow(radius: 4, x: 10, y: 30)
            })
            
        })
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
}
