//
//  CardBlockApp.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import SwiftUI

@main
struct CardBlockApp: App {
    var body: some Scene {
        WindowGroup {
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
    }
}
