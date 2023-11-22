//
//  ContentView.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 19/11/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        BanerTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.7)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                })
            }
            .background(colorBackground).ignoresSafeArea(.all, edges: .all)
        }
    }
}

//MARK: - PREVIEW
#Preview {
    ContentView()
}
