//
//  Post.swift
//  SwiftUIFramework
//
//  Created by Illya Blinov on 17.04.24.
//

import Foundation
struct Post: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var image: String
}

