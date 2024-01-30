//
//  RideType.swift
//  UberSwiftUITutorial
//
//  Created by Yoo on 2024/01/19.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case uberX
    case black
    case uberXL
    
    var id: Int { return rawValue }
    var description: String {
        switch self {
        case .uberX: return "UberX"
        case .black: return "UberBlack"
        case .uberXL: return "UberXL"
        }
    }
    var imageName: String {
        switch self {
        case .uberX: return "uber-x"
        case .black: return "uber-black"
        case .uberXL: return "uber-x"
        }
    }
    
    var baseFare: Double {
        switch self {
        case .uberX: return 500
        case .black: return 1500
        case .uberXL: return 1000
        }
    }
    
    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceBasedFares = ((distanceInMeters - 1091) / 233) * 100
        switch self {
        case .uberX: return (distanceBasedFares * 1.5) + baseFare
        case .black: return (distanceBasedFares * 2) + baseFare
        case .uberXL: return (distanceBasedFares * 1.75) + baseFare
        }
    }
}
