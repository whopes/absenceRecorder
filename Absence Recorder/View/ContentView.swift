//
//  ContentView.swift
//  Absence Recorder
//
//  Created by Hopes, William (AMM) on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    var divisions: [Division]
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView {
            List(divisions, id: \.self.code) { division in
                DivisionItem(division: division)
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { currentDate = currentDate.previousDay()} ) {
                        Image(systemName: "arrow.backward")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { currentDate = currentDate.nextDay()}) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(divisions: Division.examples)
    }
}
