//
//  cardModel.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

struct Card : Account, Identifiable {
    var id = UUID()
    var name: String
    var count: Double
    var iconName: String
    var bonusCount: Double
}
