//
//  ProductDetailView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 10/12/2023.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            
            NavigationBarDetailView()
                .padding(.horizontal)
            //                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top, UIApplication.shared.connectedScenes.flatMap {($0 as? UIWindowScene)?.windows ?? [] }.first {$0.isKeyWindow}?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                // RATINGS
                RatingsDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                })
                .padding(.bottom, UIScreen.main.bounds.height * 0.1)
                
                // QUANTITY + FAVOURITE
                // ADD TO CART
                Spacer()
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color.orange)
    }
}

#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
}
