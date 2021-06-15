//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Ranjan Akarsh on 14/06/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
