//
//  ProfileView.swift
//  DieOrgApp
//
//  Created by James Sweeney on 8/20/25.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    //Header
                    VStack (spacing: 10) {
                        HStack {
                            Image("jim")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8) {
                                UserStatView(value: 3, title: "Posts")
                                
                                UserStatView(value: 3, title: "Folowers")
                                
                                UserStatView(value: 3, title: "Following")
                            }
                        }
                        .padding(.horizontal)
                        
                        
                        //name and bio
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Jim Sweeney")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("DieHard")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        //actionButton
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                            
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1)
                                )
                            
                        }
                        
                        Divider()
                    }
                    
                    //PostGridView
                    
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(0...15, id: \.self) { index in
                            Image("skull")
                                .resizable()
                                .scaledToFit()
                        }
                        
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
            }
        }
    }
}


#Preview {
    ProfileView()
}
