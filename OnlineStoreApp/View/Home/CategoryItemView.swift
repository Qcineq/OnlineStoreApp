//
//  CategoryItemView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 22/11/2023.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPERTY
    
    let category: Category
    
    //MARK: - BODY
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        })
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
