//
//  TitleView.swift
//  TouchDown
//
//  Created by Jordan Isac on 02/06/2023.
//

import SwiftUI

struct TitleView: View {
    //MARK: -PROPERTY
    var tile: String
    
    //MARK: -BODY
    var body: some View {
        HStack {
            Text(tile)
                .font(.largeTitle)
                .fontWeight(.heavy)
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(tile: "Helmet")
            .background(colorBackground)
    }
}
