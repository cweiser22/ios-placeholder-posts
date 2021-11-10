//
//  PostDetailView.swift
//  Blog
//
//  Created by Cooper Weiser on 11/6/21.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post;
    
    var body: some View {
        VStack{
            VStack{
                Text(post.body).font(.body)
                Spacer()
            }.padding()
            
        }.navigationTitle(post.title)
    }
}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostDetailView(post: Post.data[0])
        }
    }
}
