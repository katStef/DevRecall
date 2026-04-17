//
//  DevRecallApp.swift
//  DevRecall
//
//  Created by katherine.stefaniak on 17/04/26.
//

import SwiftUI
import SwiftData

@main
struct DevRecallApp: App {
    var body: some Scene {
        WindowGroup {
            RootTabView()
        }
        .modelContainer(for: SavedItem.self)
    }
}
