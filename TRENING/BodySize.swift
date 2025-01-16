//
//  BodySize.swift
//  TRENING
//
//  Created by Marcin Zaporowski on 13/01/2025.
//

import SwiftUI
import CoreData

struct BodySize: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \WeightEntry.date, ascending: false)],
            animation: .default)
        private var weightEntries: FetchedResults<WeightEntry>
        
    @State private var weight = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack{
            TextField("Waga", text: $weight)
                .textFieldStyle(.roundedBorder)
                .padding()

            //wyświetlenie aktualnej wagi
            
            if let lastWeight = weightEntries.first {
                Text("Twoja aktualna waga: \(String(format: "%.1f", lastWeight.weight)) kg")
                    .font(.title)
                    .padding()
            } else {
                Text("Brak danych")
                    .font(.title)
                    .padding()
            }
            
            
            Button("Zapisz"){
                showingAlert = true
            }
            .buttonStyle(.borderedProminent)
            .alert(isPresented:$showingAlert) {
                Alert(
                    title: Text("Czy chcesz zaktualizować wagę ciała?"),
                    primaryButton: .default(Text("Aktualizuj"), action: addEntry),
                    secondaryButton: .cancel(Text("Anuluj"))
                )
            }
            
            List {
                ForEach(weightEntries) { entry in
                    VStack(alignment: .leading) {
                        Text("Waga: \(String(format: "%.1f",entry.weight))kg")
                        Text("Data: \(entry.date ?? Date())") //, formatter: dateFormatter)
                                  
                    }
                    
                }
            }
        }
        
        
    }
    
    private func addEntry() {
        withAnimation {
            let newEntry = WeightEntry(context: viewContext)
            newEntry.date = Date()
            newEntry.weight = Double(weight) ?? 0.0
            do {
                try viewContext.save()
            } catch {
                print("Błąd zapisu: \(error.localizedDescription)")
            }
        }
    }
}




#Preview {
    BodySize()
}
