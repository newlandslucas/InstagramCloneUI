//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 15/05/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDimensions: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({ $0.user?.username == user.username})
    }
    var body: some View {
        ScrollView(showsIndicators: false) {
            
           ProfileHeaderView(user: user)
            
            //MARK: Post grid View
            
            PostGridView(posts: posts)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("")
                } label: {
                    Image(systemName: "line.3.horizontal")
                }
                
            }
        }
        .background(Color(.systemBackground))
        .foregroundColor(Color(.label))
    }
}
            


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER[0])
    }
}
