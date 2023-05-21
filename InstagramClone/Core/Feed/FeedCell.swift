//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 16/05/23.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    
    var body: some View {
        VStack {
            
            //MARK: Image + username
            HStack {
                if let user = post.user {
                    Image(user.profileImageURL ?? "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 36, height: 36)
                        .clipShape(Circle())
                    
                    Text(user.username)
                }
               
                
                Spacer()
            }
            .padding(.leading, 8)
            
            //MARK: post image
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            //MARK: action buttons
            HStack(spacing: 16) {
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            
            //MARK: likes label
            
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //MARK: caption label
            
            HStack {
                Text("\(post.user?.username ?? "")").fontWeight(.semibold) +
                Text(post.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            .font(.footnote)
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
        }
        .foregroundColor(Color(.label))
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[0])
    }
}
