//
//  ContentView.swift
//  ExpandingLists
//
//  Created by JIHYE SEOK on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    let backContents = [currencies, tools]
    var body: some View {
        VStack {
            List(backContents, children: \.content) { row in
                Label(row.name, systemImage: row.icon)
            }
        }
    }
}

#Preview {
    ContentView()
}
