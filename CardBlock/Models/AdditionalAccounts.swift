//
//  AdditionalAccounts.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

struct AdditionAccount: Account, Identifiable {
    var id = UUID()
    var name: String
    var count: Double
    var iconName: String
}

let collecting = AdditionAccount(name: "Сбор на другое", count: 120000, iconName: "ellipsis.circle.fill")
let creditAD = AdditionAccount(name: "На любые цели", count: 150000, iconName: "plus.circle.fill")
