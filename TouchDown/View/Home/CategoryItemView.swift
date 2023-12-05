//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Jordan Isac on 02/06/2023.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: Property
    let category: Category
    
    //MARK: -BODY
    var body: some View {
        Button(action: { }, label: {
            HStack {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }//:HSTACK
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
        })//: BUTTON
       
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .padding()
            .background(colorBackground)
    }
}
