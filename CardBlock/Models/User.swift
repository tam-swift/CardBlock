//
//  userModel.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var card : Card?
    var additionalAccounts: AdditionAccount?
}
