//
//  SettingsView.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 22.04.24.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var titleOn: Bool
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    @State private var textSize: Double = 5
    var body: some View {
        Form {
            Section{
                Text("Settings")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .padding()
                colorScheme == .light ?
                Text("Light Theme enabled") :
                Text("Dark Theme enabled")
            }
            Section{
                Text("Main Settings:")
                    .font(.title2)
                Toggle("Заголовка списка", isOn: $titleOn)
                if titleOn { Text("Navigation title enabled") }
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
                Text("Text size:")
                Slider(value: $textSize, in: 0...10)

            }

        }
    }
}
/*
 #Preview {
 SettingsView(titleOn: $)
 }
 */
