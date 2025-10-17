//
//  Double.swift
//  CardBlock
//
//  Created by Tamerlan Swift on 17.10.2025.
//

import Foundation

extension Double {
    
    /// Convetrs a Double into a currency with 2 decimal places
    /// ```
    /// 1234.56 -> 1 234,56 ₽
    /// ```
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.numberStyle = .currency
        formatter.currencyCode = "RUB"
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Converts a Double into a Currency as a String with 2 decimal places
        ///  ```
        ///  1234.56 -> "1 234,56"
        ///  ```
        func asCurrencyWith2Decimals() -> String {
            let number = NSNumber(value: self)
            return currencyFormatter.string(from: number) ?? "0"
        }
}
