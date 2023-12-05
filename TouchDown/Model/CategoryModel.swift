//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Jordan Isac on 02/06/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name, image: String
}
