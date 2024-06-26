//
//  ContentView.swift
//  ViewBuilder
//
//  Created by JIHYE SEOK on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            BlueCircle {
                Text("Some text here")
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
            }
            
            BlueCircle {
                Text("Another example")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
