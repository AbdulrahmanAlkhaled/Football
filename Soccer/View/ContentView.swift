//
//  MatchDetailsView.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 16/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            LeagueView()
                .tabItem {
                    Image(systemName: "soccerball.circle")
                }
                LeaugeStandingView()
                    .tabItem {
                        Image(systemName: "table")
                        Text("Tables")
                        
                    }
            }
    }
}

#Preview {
    ContentView()
}
