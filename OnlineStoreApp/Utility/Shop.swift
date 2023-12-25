//
//  Shop.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 25/12/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
