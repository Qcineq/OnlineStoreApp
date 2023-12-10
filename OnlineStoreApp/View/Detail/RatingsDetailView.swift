//
//  RatingsDetailView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 11/12/2023.
//

import SwiftUI

struct RatingsDetailView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ocena")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
        })
    }
}

#Preview {
    RatingsDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
