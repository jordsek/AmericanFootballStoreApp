//
//  Constant.swift
//  TouchDown
//
//  Created by Jordan Isac on 31/05/2023.
//

import SwiftUI

//DATA

let players = Bundle.main.decode([Player].self, from: "player.json")
let categories = Bundle.main.decode([Category].self, from: "category.json")
let products = Bundle.main.decode([Product].self, from: "product.json")
let brands = Bundle.main.decode([Brand].self, from: "brand.json")
let sampleProduct: Product = products[0]






//COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray)

//LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
//API
//IMAGE
//FONT
//STRING
//MISC
