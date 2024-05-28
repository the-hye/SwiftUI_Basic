//
//  JournalListView.swift
//  JRNL_SwiftUI
//
//  Created by JIHYE SEOK on 5/28/24.
//

import SwiftUI

struct JournalListView: View {
    var journalEntries: [JournalEntry] = []
    var body: some View {
        NavigationStack {
            List(0..<5) { item in
                VStack {
                    HStack {
                        Image(systemName: "face.smiling")
                            .resizable()
                            .frame(width: 80, height: 80)
                        VStack {
                            Text("28 May 2024")
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Title")
                                .font(.title2)
                                .foregroundStyle(.secondary)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .padding()
                    }
                    .padding()
                }
                .navigationTitle(Text("Journal"))
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        
    }
}

#Preview {
    JournalListView()
}
