//
//  Account.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

protocol Account {
    var id: UUID { get }
    var name: String { get }
    var count: Double { get }
    var iconName: String { get }
}
