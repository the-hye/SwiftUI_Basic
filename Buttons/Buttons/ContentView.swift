//
//  ContentView.swift
//  Buttons
//
//  Created by JIHYE SEOK on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 44) {
                NavigationLink("Buttons") {
                    ButtonView()
                }
                NavigationLink("Edit Buttons") {
                    EditButtonView()
                }
                NavigationLink("Menu Buttons") {
                    MenuButtonView()
                }
                NavigationLink("Paste Buttons") {
                    PasteButtonView()
                }
                NavigationLink("Details about text") {
                    Text("Very long text that should not be deplayed in a single line because it is not good design")
                        .padding()
                        .navigationTitle(Text("Detail"))
                }
            }
            .navigationTitle(Text("Main View"))
        }
    }
}

#Preview {
    ContentView()
}
