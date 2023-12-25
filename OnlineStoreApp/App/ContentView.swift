//
//  ContentView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 19/11/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
    //                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .padding(.top, UIApplication.shared.connectedScenes.flatMap {($0 as? UIWindowScene)?.windows ?? [] }.first {$0.isKeyWindow}?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            BanerTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.7)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Pistolety")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                        .padding(.bottom)
                    })
                }
                .background(colorBackground).ignoresSafeArea(.all, edges: .all)
            } else {
                ProductDetailView()
            }
        }
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}
