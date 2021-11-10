//
//  CardView.swift
//  Blog
//
//  Created by Cooper Weiser on 11/6/21.
//

import SwiftUI

struct CardView: View {
    let post: Post;
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(post.title).font(.headline).scaledToFit()
                Spacer()
                HStack(){
                    Text(post.body).font(.footnote).scaledToFit().lineLimit(1)
                    Spacer()
                }.font(.caption)
            }.padding()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(post: Post.data[0]).previewLayout(.fixed(width: 400, height: 60))
    }
}
