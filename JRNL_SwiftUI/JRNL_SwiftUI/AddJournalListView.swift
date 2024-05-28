//
//  AddJournalListView.swift
//  JRNL_SwiftUI
//
//  Created by JIHYE SEOK on 5/28/24.
//

import SwiftUI

struct AddJournalListView: View {
    @Binding var isAddJournal: Bool
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle(Text("Add Journal"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        isAddJournal = false
                    }, label: {
                        Text("Cancel")
                    })
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                        print("save")
                    }, label: {
                        Text("Save")
                    })
                }
                
            }
        }
    }
}

//#Preview {
//    AddJournalListView()
//}
