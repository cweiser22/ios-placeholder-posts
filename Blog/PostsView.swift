//
//  PostsView.swift
//  Blog
//
//  Created by Cooper Weiser on 11/6/21.
//

import SwiftUI

struct PostsView: View {
    @EnvironmentObject var network: Network
    
    var body: some View {
        List {
                ForEach(network.posts) { post in
                    HStack{
                        NavigationLink(destination: PostDetailView(post: post)) {
                            CardView(post: post)
                        }
                    }
                }
        }
        //.padding(.vertical)
        .onAppear {
            network.getPosts()
        }.navigationTitle("All posts")
    }}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostsView().environmentObject(Network())
        }
    }
}
