//
//  HeaderDetailView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 10/12/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Pistolet")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
}
