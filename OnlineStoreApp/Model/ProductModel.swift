//
//  ProductModel.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 30/11/2023.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    
    var formattedPrice: String { return "\(price) PLN"}
}
