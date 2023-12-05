//
//  ContentView.swift
//  TouchDown
//
//  Created by Jordan Isac on 31/05/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal,15)
                            .padding(.bottom)
                            .padding(.top, geometry.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05),radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack{
                                FeaturedTabView()
                                    .frame(minHeight: 256)
                                    .padding(.vertical, 10)
                                
                                CategoryGridView()
                                
                                TitleView(tile: "Helmet")
                                
                                LazyVGrid(columns: gridLayout,spacing: 15, content: {
                                    ForEach(products){ product in
                                        ProductItemView(product: product)
                                            .onTapGesture{
                                                feedback.impactOccurred()
                                                
                                                withAnimation(.easeOut){
                                                    shop.selectedProduct = product
                                                    shop.showingProduct = true
                                                }
                                            }
                                    }//:LOOP
                                })//:VGRID
                                .padding(15)
                                
                                TitleView(tile: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }//: VSTACK
                        })//: SCROLL
                        
                        
                        
                        
                    }//: VSTACK
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                }
            }//:ZSTACK
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}
//MARK: -PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
