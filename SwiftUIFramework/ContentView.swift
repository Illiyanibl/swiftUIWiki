//
//  ContentView.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 17.04.24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label(
                        title: { Text("InfoView") },
                        icon: { Image(systemName: "book") }
                    )
                }
            HelloView()
                .tabItem {
                    Label(
                        title: { Text("Hello")},
                        icon: { Image(systemName: "hand.wave.fill")})
                }

            SettingsView()
                .tabItem {
                    Label(
                        title: { Text("Settings") },
                        icon: { Image(systemName: "slider.horizontal.3")})
                }
        }
    }
}


#Preview {
    ContentView()
}
