//
//  SectionView.swift
//  TouchDown
//
//  Created by Jordan Isac on 02/06/2023.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTY
    
    @State var rotationClockwise: Bool
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotationClockwise ? 90 : -90))
          Spacer()
        }//:VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotationClockwise: true)
            .padding()
            .background(colorBackground)
    }
}
