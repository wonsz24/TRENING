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
            List(settings) { setting in
                NavigationLink(setting.name, value: setting)
//                Text($0.name)
            }
            .navigationDestination(for: Ustawienia.self) { ustawienie in
                            Text("Wybrano: \(ustawienie.name)")
                        }
        }
    }
}

#Preview {
    ProspectView()
}
