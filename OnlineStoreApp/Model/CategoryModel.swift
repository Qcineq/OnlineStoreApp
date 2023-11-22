//
//  CategoryModel.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 22/11/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
