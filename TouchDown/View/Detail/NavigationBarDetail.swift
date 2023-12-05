//
//  NavigationBarDetail.swift
//  TouchDown
//
//  Created by Jordan Isac on 05/06/2023.
//

import SwiftUI

struct NavigationBarDetail: View {
    //MARK: - PROPERTY
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: { }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavigationBarDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetail()
            .environmentObject(Shop())
            .padding()
            .background(Color.gray)
    }
}
