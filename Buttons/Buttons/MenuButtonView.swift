//
//  MenuButtonView.swift
//  Buttons
//
//  Created by JIHYE SEOK on 4/23/24.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a Country") {
            Button("Canada") { print("Select Canada") }
            Button("Mexico") { print("Select Mexico") }
            Button("USA") { print("Select USA") }
        }
        .navigationTitle("Menu Button View")
    }
}

#Preview {
    NavigationStack {
        MenuButtonView()
    }
}
