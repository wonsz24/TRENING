//
//  FirstView.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 03/01/2025.
//

import SwiftUI

struct FirstView: View {
    let steelGray = Color(white: 0.4745)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                VStack{

                    NavigationLink (destination: BodySize()) {
                        Label("Pomiary ciała", systemImage: "chevron.right")
                            .padding()

                            .frame(maxWidth: .infinity)
                            .cornerRadius(8)
                            .tint(.red)
                            .buttonStyle(.borderedProminent)
                    }
                }
                
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            
             Spacer()
            
            .navigationTitle("Witaj, Marcin!")
        }
    }
}


#Preview {
    FirstView()
}
