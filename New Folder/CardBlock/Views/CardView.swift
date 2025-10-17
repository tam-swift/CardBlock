//
//  CardView.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

struct CardView: View {
    
    @Environment(\.colorScheme) var colorSheme
    
    var cardCount: Double
    var bonusCount: Double
    var cardName: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: "rublesign.ring")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.blue)
                .background(
                    LinearGradient(colors: [.white,
                                            colorSheme == .dark ? .blue.opacity(0.9) : .blue.opacity(0.3)],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(cardCount.asCurrencyWith2Decimals())
                    .bold()
                Text("Black")
                Image("card")
                    .resizable()
                    .frame(width: 48, height: 32)
                    .clipShape(RoundedRectangle(cornerRadius: 7))
            }
            Spacer()
            HStack {
                Image(systemName: "crown.fill")
                Text(bonusCount.asCurrencyWith2Decimals())
                    .bold()
            }
            .padding(5)
            .font(.caption2)
            .foregroundStyle(.white)
            .background(colorSheme == .dark ? .gray.opacity(0.4) :.black)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .padding(23)
        .background(Color("CardViewColor"))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(radius: 10)
    }
}

#Preview {
    CardView(cardCount: 123456.78, bonusCount: 987, cardName: "Black")
        .padding()
}

