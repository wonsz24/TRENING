//
//  ProspectView.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 02/01/2025.
//

import SwiftUI

struct Ustawienia : Identifiable, Hashable {
    let name: String
    let id = UUID()
}

private var settings = [
    Ustawienia(name: "Ustawienia konta"),
    Ustawienia(name: "Ustawienia aplikacji"),
    Ustawienia(name: "Informacje prawne"),
    Ustawienia(name: "Wyloguj się")
]

struct ProspectView: View {
    @AppStorage("profileImage") var profileImage: String?
   
    @State var isEditingImage = false
    @State var selectedImage: String?
    
    var images = ["Avatar 1", "Avatar 2", "Avatar 3", "Avatar 4", "Avatar 5", "Avatar 6", "Avatar 7"]
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Image(profileImage ?? "Avatar 1") // ?? powoduje, że domyślnie będzie Avatar1 jako zdjęcie
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height: 100)
                        .padding(.all, 8)
                        .onTapGesture {
                            withAnimation {
                                isEditingImage = true
                            }
                        }
                    Text("Marcin Zaporowski")
                        .font(.title)
                        
                }
                .frame(maxWidth: .infinity/*, maxHeight: .infinity, */,alignment: .topLeading)
                
            }
            VStack{
                Button("Edytuj zdjęcie"){
                    withAnimation {
                        isEditingImage = true
                    }
                }
              
            }
            
            if isEditingImage {
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(images, id: \.self) { image in
                            Button {
                                withAnimation {
                                    selectedImage = image
                                }
                           
                            } label: {
                                VStack {
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:100, height: 100)
                                    
                                    if selectedImage == image {
                                        Circle()
                                            .frame(width: 10, height: 10)
                                    }
                                }
                            }
                            .shadow(radius: selectedImage == image ? 5 : 0)
                            

                        }
                    }
                }
                HStack {
                    Button("Anuluj") {
                        withAnimation {
                            isEditingImage = false
                        }
                    }
                    .buttonStyle(.borderedProminent)
//                    .frame(width: 200)
                    
                    Button("Zmień") {
                        withAnimation {
                            profileImage = selectedImage
                            isEditingImage = false
                        }
                    }
                    .buttonStyle(.borderedProminent)
//                    .frame(width: 200)
                    
                }
            }
            
            List(settings) { setting in
                NavigationLink(setting.name, value: setting)
//                Text($0.name)
            }
            .navigationDestination(for: Ustawienia.self) { ustawienie in
                            Text("Wybrano: \(ustawienie.name)")
                        }
            .navigationTitle("Ustawienia")
        }
        .onAppear() {
            selectedImage = profileImage
        }
    }
}

#Preview {
    ProspectView()
}
