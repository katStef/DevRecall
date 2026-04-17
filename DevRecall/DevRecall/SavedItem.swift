//
//  SavedItem.swift
//  DevRecall
//
//  Created by katherine.stefaniak on 17/04/26.
//

import SwiftUI
import SwiftData

@Model
final class SavedItem: Identifiable {
    var id: UUID
    var title: String
    var url: String
    var tags: [String]
    var summary: String
    var createdAt: Date
    
    init(
        title: String,
        url: String,
        tags: [String],
        summary: String,
        createdAt: Date = .now
    ) {
        self.id = UUID()
        self.title = title
        self.url = url
        self.tags = tags
        self.summary = summary
        self.createdAt = createdAt
    }
    
}
