//
//  userModel.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var cards : [Card]?
    var additionAccounts: [AdditionAccount]?
    var waste: Int
}

let currentUser = User(cards: [currentCard], additionAccounts: [collecting, creditAD], waste: 371402)
