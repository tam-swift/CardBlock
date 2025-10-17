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

protocol Account {
    var id: UUID { get }
    var name: String { get }
    var count: Double { get }
    var iconName: String { get }
}
