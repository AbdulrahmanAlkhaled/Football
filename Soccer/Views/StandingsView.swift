//
//  StandingsView.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 17/12/2023.
//

import SwiftUI


struct StandingsView: View {
    @ObservedObject var vm : StandingsViewModel = StandingsViewModel()
    
    var body: some View {
        ZStack {
            if vm.standings.isEmpty {
                ProgressView()
                
            } else{
                
                NavigationStack {
                    VStack{
                        
                        
                        HStack(spacing : 16){
                            Text("Club")
                            Spacer()
                            Text("Points")
                            Text("Wins")
                            Text("Draws")
                            Text("Loses")
                            
                            
                        }.foregroundStyle(Color.secondary).padding(.horizontal)
                        
                        ScrollView{
                            ForEach(vm.standings.sorted(by: { team1, team2 in
                                team1.point > team2.point
                            }), id: \ .self){ team in
                                HStack(spacing: 20){
                                    AsyncImage(url: URL(string: team.teamLogo)) { result in
                                                                                    if let image = result.image {
                                                                                        image
                                                                                            .resizable()
                                                                                            .scaledToFit()
                                                                                            .frame(width:20, height: 20)
                                                                                            .clipShape(RoundedRectangle(cornerRadius: 16))

                                                                                    } else {
                                                                                        ProgressView()
                                                                                    }
                                                                                }
                                    
                                        Text(team.teamName).font(.system(size: 10))
                                    
                                    Spacer()
                                    Text(team.point).padding(.horizontal).font(.system(size: 10))
                                    Text(team.win).padding(.horizontal).font(.system(size: 10))
                                    Text(team.draw).padding(.horizontal).font(.system(size: 10))
                                    Text(team.lose).padding(.horizontal).font(.system(size: 10))
                                    
                                    

                                }.padding(.horizontal)
                                Divider()
                            }
                            
                            
                            
                            
                            
                            
                        }
                    }
                }
                
            }
                
        }.task {
            await vm.fetchStandings()
        }
        .onDisappear {
            vm.standings = []
        }
        }
    }


#Preview {// MARK: ADJUST the param
    StandingsView()
}
