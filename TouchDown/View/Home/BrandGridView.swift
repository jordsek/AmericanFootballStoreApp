//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Jordan Isac on 05/06/2023.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }

            })//:GRID
            .frame(height: 200)
            .padding(50)
        })//: SCROLL
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .background(colorBackground)
    }
}
