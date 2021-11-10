//
//  Post.swift
//  Blog
//
//  Created by Cooper Weiser on 11/6/21.
//

import Foundation

struct Post: Identifiable, Decodable{
    var id: Int
    var title: String
    var userId: Int
    var body: String
}

extension Post{
    static var data: [Post] {
        [
            Post(id: 1, title: "title", userId: 1, body: "temporary post body"),
            Post(id: 2, title: "title2", userId: 1, body: "temporary post body 2")
        ]
    }
}
