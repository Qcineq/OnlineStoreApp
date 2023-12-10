//
//  TopPartDetailView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 10/12/2023.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTY
    
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Cena")
                    .fontWeight(.semibold)
            
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.1, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            // PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
                .shadow(radius: 4, x: 10, y: 30)
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
        .previewLayout(.sizeThatFits)
        .padding()
}
