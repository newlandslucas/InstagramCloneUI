//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Lucas Newlands on 15/05/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
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
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray, lineWidth: 1))
                    }
                    
                    Divider()

                }
                
                //MARK: Post grid View
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 10, id: \.self) { index in
                        Image("userImage")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
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
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
