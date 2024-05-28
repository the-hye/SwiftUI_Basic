//
//  AddNoteView.swift
//  FirebaseBasic
//
//  Created by JIHYE SEOK on 4/30/24.
//

import SwiftUI

struct AddNoteView: View {
    @State private var title: String = ""
    @State private var bodyText: String = ""
    @Environment(\.dismiss) var dismiss
    
    var service: NotesService?
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                TextField("Title", text: $title)
                    .padding(4)
                    .border(.gray)
                TextEditor(text: $bodyText)
                    .border(.gray)
            }
            .padding(32)
            .navigationTitle("New Note")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        service?.addNote(title: title, date: Date(), body: bodyText)
                        dismiss()
                    } label: {
                        Image(systemName: "checkmark")
                            .font(.headline)
                    }
                    .disabled(title.isEmpty)
                }
            }
        }
    }
}

#Preview {
    AddNoteView(service: nil)
}
