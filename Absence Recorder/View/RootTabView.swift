//
//  RootTabView.swift
//  Absence Recorder)
//
//  Created by Hopes, William (AMM) on 03/02/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("Absences")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
