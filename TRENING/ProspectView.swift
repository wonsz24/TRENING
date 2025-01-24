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
   
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Image("Avatar 1")
                        .resizable()
                        .scaledToFit()
                        .frame(width:100, height: 100)
                        .padding(.all, 8)
                    
                    Text("Marcin Zaporowski xxxx")
                        .font(.title)
                        
                }
                .frame(maxWidth: .infinity/*, maxHeight: .infinity, */,alignment: .topLeading)
                
                
            }
            VStack{
                NavigationLink(destination: BodySize()) {
                    Text("Edytuj zdjęcie")
//                       .padding()
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
        
    }
}

#Preview {
    ProspectView()
}
