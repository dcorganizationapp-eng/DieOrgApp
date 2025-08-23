//
//  ProfileView.swift
//  DieOrgApp
//
//  Created by James Sweeney on 8/20/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //Header
            VStack {
                HStack {
                    Image("jim")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Posts")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                        
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Followers")
                                .font(.footnote)
                        }
                        .frame(width: 76)
                        
                        VStack {
                            Text("3")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            
                            Text("Following")
                                .font(.footnote)
                        }
                        .frame(width: 76)
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
                        .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1))
                }
                
                Divider()
            }
                //PostGridView
        }
    }
}

#Preview {
    ProfileView()
}
