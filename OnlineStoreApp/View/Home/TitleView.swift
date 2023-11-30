//
//  TitleView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 30/11/2023.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    
    var title: String
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Pistolety")
}
