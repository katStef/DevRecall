//
//  FeedView.swift
//  DevRecall
//
//  Created by katherine.stefaniak on 17/04/26.
//

import SwiftUI
import SwiftData

struct FeedView: View {
    
    @Query(sort: \SavedItem.createdAt, order: .reverse)
    private var items: [SavedItem]
    
    var body: some View {
        NavigationStack {
            Group {
                if items.isEmpty {
                    ContentUnavailableView(
                        "No Saved Items",
                        systemImage: "tray",
                        description: Text("Add your first link or note")
                    )
                } else {
                    List {
                        ForEach(items) { item in
                            VStack(alignment: .leading, spacing: 6) {
                                Text(item.title)
                                    .font(.headline)
                                
                                Text(item.tags.joined(separator: ", "))
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                                
                                Text(item.url)
                                    .font(.caption2)
                                    .foregroundStyle(.gray)
                                    .lineLimit(1)
                            }
                            .padding(.vertical, 4)
                        }
                    }
                }
            }
            .navigationTitle("Feed")
        }
    }
}
