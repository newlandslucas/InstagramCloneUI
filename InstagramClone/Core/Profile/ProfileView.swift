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
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            //MARK: Header
            VStack(spacing: 10) {
                
                HStack {
                    Image(user.profileImageURL ?? "")
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
                    Text(user.fullname ?? "")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    if let bio = user.bio {
                        Text(bio)
                            .font(.footnote)
                    }
                    
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
            
            LazyVGrid(columns: gridItems, spacing: 2) {
                Image("userImage")
                    .resizable()
                    .scaledToFit()
                Image("userImage2")
                    .resizable()
                    .scaledToFit()
                Image("userImage3")
                    .resizable()
                    .scaledToFit()
                Image("userImage4")
                    .resizable()
                    .scaledToFit()
            }
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
            


//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView(user: User.MOCK_USER)
//    }
//}
