//
//  InfoView.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 19.04.24.
//

import SwiftUI
import SwiftData
struct InfoView: View {
    @Environment(\.modelContext) private var modelContext
    var titleOn: Bool
    var body: some View {
        NavigationView {
            List(PostModel.postCollection) { post in
                NavigationLink {
                    InfoDetails(post: post, titleOn: titleOn)
                } label: {
                    InfoRow(post: post)
                }
            }
        }
    }
}
/*
 #Preview {
 InfoView(titleOn: true)
 }
 */
