//
//  JournalListView.swift
//  JRNL_SwiftUI
//
//  Created by JIHYE SEOK on 5/28/24.
//

import SwiftUI

struct JournalListView: View {
    @State private var isAddJournal = false
    var sampleJournalEntryData: SampleJournalEntryData
    
    init() {
        self.sampleJournalEntryData = SampleJournalEntryData()
        self.sampleJournalEntryData.createSampleJournalEntryData()
    }
    
    var body: some View {
        
        NavigationStack {
            List(sampleJournalEntryData.journalEntries) { journalEntry in
                VStack {
                    HStack {
                        if let photoData = journalEntry.photoData,
                           let uiImage = UIImage(data: photoData) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .frame(width: 70, height: 70)
                        } else {
                            Image(systemName: "face.smiling")
                                .resizable()
                                .frame(width: 70, height: 70)
                        }
                        VStack {
                            Text("28 May 2024")
                                .font(.title2)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Title")
                                .font(.title3)
                                .foregroundStyle(.secondary)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle(Text("Journal"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isAddJournal = true
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
            .sheet(isPresented: $isAddJournal, content: {
                AddJournalListView(isAddJournal: $isAddJournal)
            })
        }
        
    }
}

#Preview {
    JournalListView()
}
