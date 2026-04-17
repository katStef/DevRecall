//
//  RootTabView.swift
//  DevRecall
//
//  Created by katherine.stefaniak on 17/04/26.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "list.bullet")
                }
            
            AddItemView()
                .tabItem {
                    Label("Add", systemImage: "plus.circle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

