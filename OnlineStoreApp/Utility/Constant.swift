//
//  Constant.swift
//  OnlineStoreApp
//
//  Created by Jakub Kuciński on 19/11/2023.
//

import SwiftUI

// DATA

let baner: [Baner] = Bundle.main.decode("baner.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(red: 110/255, green: 110/255, blue: 110/255)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX
// API
// IMAGE
// FONT
// STRING
// MISC
