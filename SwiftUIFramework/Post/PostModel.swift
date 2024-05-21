//
//  PostModel.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 17.04.24.
//

import Foundation

final class PostModel {
    static var description: String  {
        var text = "Test test. "
        (1...5).forEach(){ _ in text += text}
        return text
    }
    static var postCollection: [Post] = []

    static func addPost(_ post: Post) {
        postCollection.append(post)
    }
   static func removePost(_ postID: Int) {
        guard postCollection.count > postID else { return }
        let postFinding = postCollection.enumerated().first(where: { $0.offset == postID } )
        guard postFinding != nil else { return }
        postCollection.remove(at: postID)
    }
    static func setupPostCollection(){
        addPost(Post(title: "Test", description: description, image: "puzzlepiece"))
        addPost(Post(title: "Info", description: description, image: "book.fill"))
        addPost(Post(title: "Wiki", description: description, image: "graduationcap.fill"))

    }
}
