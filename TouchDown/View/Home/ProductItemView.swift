//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Jordan Isac on 02/06/2023.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTY
    let product: Product
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            //PRICE
        })//: VSTACK
        
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .padding()
            .background(colorBackground)
    }
}
