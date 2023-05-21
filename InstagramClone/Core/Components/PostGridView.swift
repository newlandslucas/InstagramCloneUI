//
//  PostGridView.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 18/05/23.
//

import SwiftUI

struct PostGridView: View {
    var posts: [Post]
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDimensions: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 2) {
            ForEach(posts) {post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimensions, height: imageDimensions)
                    .clipped()
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(posts: Post.MOCK_POSTS)
    }
}
