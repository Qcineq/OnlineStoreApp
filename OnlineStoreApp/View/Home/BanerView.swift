//
//  BanerView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 22/11/2023.
//

import SwiftUI

struct BanerView: View {
    //MARK: - PROPERTY
    
    let baner: Baner
    
    //MARK: - BODY
    
    var body: some View {
        Image(baner.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    BanerView(baner: baner[0])
        .background(colorBackground)
}
