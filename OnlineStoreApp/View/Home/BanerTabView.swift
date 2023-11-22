//
//  BanerTabView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 22/11/2023.
//

import SwiftUI

struct BanerTabView: View {
    var body: some View {
        TabView {
            ForEach(baner) { banerItem in
                BanerView(baner: banerItem)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    BanerTabView()
        .background(Color.gray)
}
