//
//  InfoRow.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 22.04.24.
//

import SwiftUI

struct InfoRow: View {
    var post: Post
    var body: some View {
        HStack {
            Image(systemName: post.image)
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(.leading, 10)
                .padding(.trailing, 10)
            Text(post.title)
                .font(.title)
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    InfoRow(post: PostModel.postCollection[0])
}
