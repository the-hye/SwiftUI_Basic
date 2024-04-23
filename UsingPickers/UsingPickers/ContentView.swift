//
//  ContentView.swift
//  UsingPickers
//
//  Created by JIHYE SEOK on 4/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var choice = 0
    @State private var showText = false
    @State private var transitMode = ["Bus", "Car", "Metro"]
    @State private var sliderVal: Float = 0
    @State private var gameTime = Date()
    
    var body: some View {
        Form {
            Section {
                Picker("Transit Mode", selection: $choice) {
                    ForEach( 0..<transitMode.count, id:\.self) { index in
                        Text("\(transitMode[index])")
                    }
                }
                .pickerStyle(.segmented)
                Text("Current Choice : \(transitMode[choice])")
            }
            
            Section {
                Toggle(isOn: $showText) {
                    Text("Show Text")
                }
                if showText {
                    Text("The Text toggle is on")
                }
            }
            
            Section {
                Slider(value: $sliderVal, in: 0...10, step: 0.001)
                Text("Slider current value \(sliderVal, specifier: "%.3f")")
            }
        }
    }
}

#Preview {
    ContentView()
}
