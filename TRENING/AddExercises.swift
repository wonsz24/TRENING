//
//  AddExercises.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 10/01/2025.
//

import SwiftUI

struct AddExercises: View {
    @State private var planName = ""
    @State private var excerciseName = ""
    @State private var category = ""
    
    var body: some View {
        VStack{
            TextField("Nazwa planu", text: $planName)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white))
//                .stroke(Color.green.opacity(0.3)))
            
            TextField("Nazwa ćwiczenia", text: $excerciseName)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white))
            
            TextField("Kategoria ćwiczenia", text: $category)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white))
        }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.gray.opacity(0.7))
            .foregroundStyle(.white)
            .cornerRadius(15)
        
        VStack{
            Button("Dodaj"){
                print("Dodaj")
            }
        }
        
        VStack{
            Button("Dodaj plan treningowy"){
                print("Dodaj plan treningowy")
            }
        }
    }
    
}

#Preview {
    AddExercises()
}
