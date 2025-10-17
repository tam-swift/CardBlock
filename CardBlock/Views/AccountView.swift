//
//  Account.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

struct AccountView<AccountType:Account>: View {
    
    @Environment(\.colorScheme) var colorSheme
    
    let userAccount: AccountType
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: userAccount.iconName)
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
                Text(userAccount.count.asCurrencyWith2Decimals())
                    .fontWeight(.heavy)
                Text(userAccount.name)
                    .fontWeight(.regular)
                if userAccount is Card {
                    Image("card")
                        .resizable()
                        .frame(width: 48, height: 32)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                }
                
            }
            Spacer()
            if userAccount is Card{
                bonusView
            }
        }
        .padding(23)
        .background(Color("CardViewColor"))
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .black.opacity(0.2), radius: 10)
    }
    
    private var bonusView: some View {
        HStack {
            Image(systemName: "crown.fill")
            Text((userAccount as? Card)? .bonusCount.asCurrencyWith2Decimals() ?? "0" )
        }
        .padding(5)
        .font(.caption2)
        .fontWeight(.heavy)
        .foregroundStyle(.white)
        .background(colorSheme == .dark ? .gray.opacity(0.4) :.black)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    Group {
        AccountView(userAccount: currentCard)
            .padding()
        AccountView(userAccount: collecting)
            .padding()
    }
}

