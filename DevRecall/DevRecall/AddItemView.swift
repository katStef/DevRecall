//
//  AddItemView.swift
//  DevRecall
//
//  Created by katherine.stefaniak on 17/04/26.
//

import SwiftUI
import SwiftData

struct AddItemView: View {
    
    @Environment(\.modelContext) private var context
    
    @State private var title = ""
    @State private var url = ""
    @State private var tagInput = "Swift"
    
    
    
    var body: some View {
        NavigationStack {
            Form {
                
                Section("Content") {
                    TextField("Title", text: $title)
                    TextField("URL", text: $url)
                        .textInputAutocapitalization(.never)
                        .keyboardType(.URL)
                }
                
                Section("Tag") {
                    TextField("Tags (comma separated)", text: $tagInput)
                }
                
                Section {
                    Button("Save") {
                        saveItem()
                    }
                    .disabled(title.isEmpty || url.isEmpty)
                }
            }
            .navigationTitle("Add Item")
        }
    }
    
    private func saveItem() {
        let tags = tagInput
            .split(separator: ",")
            .map { String($0).trimmingCharacters(in: .whitespacesAndNewlines)}
            .filter { !$0.isEmpty }
        
        let item = SavedItem(
            title: title,
            url: url,
            tags: tags,
            summary: ""
        )
        
        context.insert(item)
        
        title = ""
        url = ""
        tagInput = ""
    }
}
