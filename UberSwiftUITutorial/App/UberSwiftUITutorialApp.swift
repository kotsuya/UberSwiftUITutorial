//
//  UberSwiftUITutorialApp.swift
//  UberSwiftUITutorial
//
//  Created by Yoo on 2024/01/14.
//

import SwiftUI

@main
struct UberSwiftUITutorialApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
