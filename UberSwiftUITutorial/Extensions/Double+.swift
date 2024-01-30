//
//  Double+.swift
//  UberSwiftUITutorial
//
//  Created by Yoo on 2024/01/19.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
//        formatter.minimumFractionDigits = 2
//        formatter.maximumFractionDigits = 2
        formatter.numberStyle = .currencyAccounting
        return formatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? ""
    }
}
