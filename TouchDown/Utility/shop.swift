//
//  shop.swift
//  TouchDown
//
//  Created by Jordan Isac on 06/06/2023.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
