//
//  PostModel.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 17.04.24.
//

import Foundation

protocol PostModelProtocol {
    var postCollection: [Post] { get }
    func addPost(_ post: Post)
    func removePost(_ postID: Int)
}

final class PostModel {
    static var description: String  {
        var text = "Test test. "
        (1...5).forEach(){ _ in text += text}
        return text
    }
    static var postCollection: [Post] = [Post(title: "Test", description: description, image: "puzzlepiece")]

    static func addPost(_ post: Post) {
        postCollection.append(post)
    }
   static func removePost(_ postID: Int) {
        guard postCollection.count > postID else { return }
        let postFinding = postCollection.enumerated().first(where: { $0.offset == postID } )
        guard postFinding != nil else { return }
        postCollection.remove(at: postID)
    }
}
