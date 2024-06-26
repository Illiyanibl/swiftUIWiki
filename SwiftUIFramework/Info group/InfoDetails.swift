//
//  InfoDetails.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 22.04.24.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    var body: some View {
        VStack{
            Text(post.title)
                .font(.title)
                .bold()
            HStack{
                Image(systemName: post.image)
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Spacer()
            }
            ScrollView {
                HStack {
                    Text(post.description)
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    InfoDetails(post: PostModel.postCollection[0])
}
