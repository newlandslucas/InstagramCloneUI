//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 16/05/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            
            //MARK: Image + username
            HStack {
                Image("userImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipShape(Circle())
                
                Text("lucasnewlands_")
                
                Spacer()
            }
            .padding(.leading, 8)
            
            //MARK: post image
            
            Image("userImage2")
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
            
            Text("100 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            //MARK: caption label
            
            HStack {
                Text("lucasnewlands_").fontWeight(.semibold) +
                Text("This is some test caption for now")
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
        FeedCell()
    }
}
