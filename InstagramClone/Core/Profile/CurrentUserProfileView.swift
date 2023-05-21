//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 18/05/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDimensions: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                //MARK: Header
                VStack(spacing: 10) {
                    
                    HStack {
                        Image("userImage")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            UserStatView(value: 43, title: "Posts")
                            
                            UserStatView(value: 1181, title: "Followers")

                            UserStatView(value: 1140, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Lucas Newlands")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Brasília")
                            .font(.footnote)

                        Text("Software Developer at @ibm")
                            .font(.footnote)

                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 140, height: 32)
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(8)
                    }
                        Button {
                            
                        } label: {
                            Text("Share")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 140, height: 32)
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(8)
                    }
                        Button {
                            
                        } label: {
                            Image(systemName: "person.badge.plus")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 45, height: 32)
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(8)
                    }
                    }
                    
                    Divider()

                }
                
                //MARK: Post grid View
                
                PostGridView(posts: Post.MOCK_POSTS)
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
                
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack(spacing: 3) {
                        Image(systemName: "lock")
                            .imageScale(.large)
                        Text("lucasnewlands_")
                            .font(.system(size: 20, weight: .bold))
                       
                    }
                   
                }
            }
            .background(Color(.systemBackground))
            .foregroundColor(Color(.label))
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USER[0])
    }
}
