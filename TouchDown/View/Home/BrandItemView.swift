//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Jordan Isac on 05/06/2023.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTY
    
    let brand: Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .background(Color.white.cornerRadius(12))
            .background( RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .padding()
            .background(colorBackground)
    }
}
