//
//  EditProfileView.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 25/01/2025.
//

import SwiftUI

struct EditProfileView: View {
    
    @State var isEditigImage = false
    
    var images = ["Avatar 1", "Avatar 2", "Avatar 3", "Avatar 4", "Avatar 5", "Avatar 6", "Avatar 7"]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                HStack {
                    Image("Avatar 1")
                        .resizable()
                        .scaledToFit()
                        .padding(.all, 8)
                        .frame(width:100, height:100)
                    
                    Text("Marcin Zaporowski")
                        .font(.title)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity ,alignment: .topLeading)

            }
            
            VStack {
                Button("Zmień zdjęcie profilowe") {
                    isEditigImage = true
                }
                
                if isEditigImage {
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(images, id: \.self) {image in
                                Button {
                                    print("elo")
                                } label: {
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .padding(.all, 8)
                                        .frame(width:100, height:100)
                                }
                            }
                            
                        }
                        
                    }
                }
               
            }
            
        }
        .navigationTitle("Profil")
    }
}

#Preview {
    EditProfileView()
}
