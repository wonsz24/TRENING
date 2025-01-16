//
//  SecondView.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 03/01/2025.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                Button("Rozpocznij trening"){
                    print("Rozpocznij trening") //drukuje po mojej stronie czy faktycznie klikniete
                }
                .buttonStyle(.borderedProminent) 
                .tint(.red) //kolor tła ramki
                .foregroundColor(.white) // Kolor tekstu
                    .navigationTitle("Trening")
 
            }
            .toolbar {
                NavigationLink {
                    AddExercises()
                } label: {
                    Label("Dodaj", systemImage: "plus")
                }
//                Button("Dodaj"){
//                    print("Dodaj")
//                }
//                Image(systemName: "plus")
            }
            
        }
   
            
    }
}

#Preview {
        SecondView()
}
