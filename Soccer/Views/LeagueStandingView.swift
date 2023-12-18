//
//  LeagueStandingView.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 17/12/2023.
//

import SwiftUI

struct LeaugeStandingView: View {
    
    @StateObject var vm = StandingsViewModel()
    @State private var isSecondScreenActive = false
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack (spacing: 20) {
                    Button {
                        
                        
                        isSecondScreenActive.toggle()
                        vm.lnum = 1
                        
                        
                    } label: {
                        HStack {
                            Image("Premier league")
                                .resizable()
                                .frame(width: 50, height: 70)
                                .padding(.horizontal)
                            
                            Text("Premier League")
                                .bold()
                            Image(systemName: "chevron.right")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal)
                        }.padding()
                            .foregroundStyle(.black)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.5)
                                .frame(width: 350)
                                .foregroundStyle(.gray)
                            )
                    }
                    
                    Button {
                        
                        isSecondScreenActive.toggle()
                        vm.lnum = 2
                        
                    } label: {
                        HStack {
                            Image("LaLiga")
                                .resizable()
                                .frame(width: 65, height: 70)
                                .padding(.horizontal)
                            Text("La Liga")
                                .bold()
                            Image(systemName: "chevron.right")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal)
                        }.padding()
                            .foregroundStyle(.black)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.5)
                                .frame(width: 350)
                                .foregroundStyle(.gray)
                            )
                    }
                    
                    Button {
                        
                        isSecondScreenActive.toggle()
                        vm.lnum = 3
                        
                    } label: {
                        HStack {
                            Image("Roshn")
                                .resizable()
                                .frame(width: 65, height: 70)
                                .padding(.horizontal)
                            Text("Roshn Luague")
                                .bold()
                            Image(systemName: "chevron.right")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal)
                            
                        }.padding()
                            .foregroundStyle(.black)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.5)
                                .frame(width: 350)
                                .foregroundStyle(.gray)
                            )
                    }
                    
                    Button {
                        
                        isSecondScreenActive.toggle()
                        vm.lnum = 3
                        
                    } label: {
                        HStack {
                            Image("Serie")
                                .resizable()
                                .frame(width: 60, height: 70)
                                .padding(.horizontal)
                            Text("Serie League")
                                .bold()
                            Image(systemName: "chevron.right")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal)
                            
                        }.padding()
                            .foregroundStyle(.black)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.5)
                                .frame(width: 350)
                                .foregroundStyle(.gray)
                            )
                        
                    }
                    
                    Button {
                        
                        isSecondScreenActive.toggle()
                        vm.lnum = 3
                        
                    } label: {
                        HStack {
                            Image("Champions League")
                                .resizable()
                                .frame(width: 65, height: 70)
                                .padding(.horizontal)
                            Text("Champions League")
                                .bold()
                            Image(systemName: "chevron.right")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.horizontal)
                            
                        }.padding()
                            .foregroundStyle(.black)
                            .background(RoundedRectangle(cornerRadius: 20)
                                .stroke(lineWidth: 0.5)
                                .frame(width: 350)
                                .foregroundStyle(.gray)
                            )
                        
                    }
                    
                }.navigationTitle("Leagues")
                   // .padding()
                NavigationLink(
                    destination: StandingsView(vm: vm),
                    isActive: $isSecondScreenActive,
                    label: { EmptyView() }
                )
            }
            
        }
        
    }
}

#Preview {
    LeaugeStandingView()
}
