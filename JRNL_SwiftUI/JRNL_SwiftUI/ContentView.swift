//
//  ContentView.swift
//  JRNL_SwiftUI
//
//  Created by JIHYE SEOK on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            JournalListView()
                .tabItem {
                    Image(systemName: "pencil.line")
                    Text("Journal")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
        }
    }
}
