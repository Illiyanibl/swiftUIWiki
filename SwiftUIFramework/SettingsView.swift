//
//  SettingsView.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 22.04.24.
//

import SwiftUI

struct SettingsView: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    @State private var toggle = true
    @State private var textSize: Double = 5
    var body: some View {
        Form {
            Text("Settings")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .padding()
            Section{
                Text("Main Settings:")
                    .font(.title2)
                Toggle("Toggle", isOn: $toggle)
                Picker("Color", selection: $selectedColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                Text("You selected: \(selectedColor)")
            }
            Section {
                Text("Other Settings:")
                    .font(.title2)
                Slider(value: $textSize, in: 0...10)

            }

        }
    }
}

#Preview {
    SettingsView()
}
