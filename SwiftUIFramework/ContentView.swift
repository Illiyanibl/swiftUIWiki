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
    //@State private var titleOn: Bool = true
    @AppStorage("titleOn") var titleOn: Bool = true
    @Query private var items: [Item]
    
    var body: some View {
        TabView {
            InfoView(titleOn: titleOn)
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
            
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label(
                        title: { Text("Settings") },
                        icon: { Image(systemName: "slider.horizontal.3")})
                }
        }
    }
    init(){
        PostModel.setupPostCollection()
    }
}


#Preview {
    ContentView()
}
