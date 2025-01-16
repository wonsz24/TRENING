//
//  ContentView.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 27/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstView()
                .tabItem{
                    Label("Start", systemImage: "flame.fill")
                }
            SecondView()
                .tabItem{
                    Label("Trening", systemImage: "figure.run")
                }
            ProspectView()
                .tabItem{
                    Label("Ustawienia", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
