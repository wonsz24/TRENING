//
//  MyAccount.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 13/01/2025.
//

import SwiftUI

struct MyAccount: View {
    @State private var waga = 0
    @State private var wzrost = 0
    var body: some View {
        VStack{
            TextField("Waga", value: $waga, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextField("Wzrost", value: $wzrost, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Twoje dane: waga - \(waga), wzrost - \(wzrost)")
        }
    }
}

#Preview {
    MyAccount()
}
