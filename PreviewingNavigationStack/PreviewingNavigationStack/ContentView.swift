//
//  ContentView.swift
//  PreviewingNavigationStack
//
//  Created by JIHYE SEOK on 4/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: SecondView(someText: "Text passed from ContentView")) {
                Text("Go to Second View")
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(25)
            }
            .navigationTitle("Previews")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
