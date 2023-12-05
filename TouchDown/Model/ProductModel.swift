//
//  ProductModel.swift
//  TouchDown
//
//  Created by Jordan Isac on 02/06/2023.
//

import Foundation

struct Product: Codable, Identifiable{
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var red: Double { return color[0]}
    var green: Double { return color[1]}
    var blue: Double { return color[2]}
    
    var formattedPrice: String { return "$\(price)"}

}
