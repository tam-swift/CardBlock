//
//  Action.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

struct ActionModel: Identifiable {
    var id = UUID()
    var name: String
    var iconName: String
}

let actionModels : [ActionModel] = [ActionModel(name: "Перевести по телефону", iconName: "number"),
                                    ActionModel(name: "Пополнить Black", iconName: "plus.circle.fill"),
                                    ActionModel(name: "Сканировать QR-код", iconName: "qrcode.viewfinder"),
                                    ActionModel(name: "Оплатить айфоном", iconName: "wave.3.right")]
