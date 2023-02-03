//
//  StateController.swift
//  Absence Recorder
//
//  Created by Hopes, William (AMM) on 03/02/2023.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init() {
        divisions = Division.examples
    }
}
