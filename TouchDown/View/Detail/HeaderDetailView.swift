//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Jordan Isac on 05/06/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6 ,content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .padding()
            .background(Color.gray)
    }
}
