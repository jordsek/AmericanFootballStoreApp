//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Jordan Isac on 31/05/2023.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
