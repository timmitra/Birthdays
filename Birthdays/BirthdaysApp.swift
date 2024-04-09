//
//  ChatPrototypeApp.swift
//  ChatPrototype
//
//  Created by Tim Mitra on 2024-04-08.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .modelContainer(for: Friend.self)
        }
    }
}
