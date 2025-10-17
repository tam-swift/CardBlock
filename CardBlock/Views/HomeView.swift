//
//  HomeView.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

struct HomeView: View {
    

    var body: some View {
        NavigationStack {
            ScrollView {
                
                LazyVStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.gray)
                        TextField("Поиск", text: .constant(""))
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 14)
                    .padding(.bottom)
                    HStack {
                        AllOperationsView(waste: currentUser.waste)
                        Spacer()
                        CashbackView()
                    }
                    .padding(.horizontal)
                    HStack {
                        ForEach(actionModels) { action in
                            
                            ActionView(action: action)
                               
                        }
                        .padding(.vertical, 12)
                    }
                    if let cards = currentUser.cards {
                        ForEach(cards, id: \.id) { card in
                            AccountView(userAccount: card)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    if let additionalAccount = currentUser.additionAccounts {
                        ForEach(additionalAccount, id: \.id) { account in
                            AccountView(userAccount: account)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                }
            }
            .navigationTitle("Главная")
            .toolbar {
                
//                ToolbarItem(placement: .principal) {
//                    Text("Главная")
//                        .font(.headline)
//                        .foregroundStyle(.primary)
//                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gift.fill")
                        .foregroundStyle(Color.blue)
                }
            }
        }
    }
}

#Preview {
    TabView {
        Tab("Главная", systemImage: "t.circle") {
            HomeView()
        }.badge(1)
        Tab("Платежи", systemImage: "bolt.horizontal.circle.fill") {
            
        }
        Tab("Город", systemImage: "house") {
            
        }
        Tab("Чат", systemImage: "message.fill") {
          
        }.badge(17)
        Tab("Витрина", systemImage: "square.split.2x2") {
            
        }
    }
}
