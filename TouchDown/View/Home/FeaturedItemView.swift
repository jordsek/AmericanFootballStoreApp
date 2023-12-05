//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Jordan Isac on 31/05/2023.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTY
    
    let player: Player
    // MARK: - BODY
    
    var body: some View {
        VStack {
                Image(player.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                
            
        }

    }
}
struct FeaturedItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        FeaturedItemView(player: players[0])
          .previewLayout(.sizeThatFits)
          .padding()
          .background(colorBackground)
    }
}
