//
//  LeagueView.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 15/12/2023.
//

import SwiftUI

struct LeagueView: View {
    @StateObject var vm = LeagueViewModel()
    var body: some View {
        NavigationStack {
                    ScrollView {
                        VStack(spacing: 20) {

                    NavigationLink(destination: Match_PLView()) {
                        HStack{
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
                        NavigationLink(destination: Match_Roshn()) {
                            HStack{
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
                    NavigationLink(destination: Match_LLView()) {
                        HStack{
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
                   
                        NavigationLink(destination: Match_CLView()) {
                            HStack{
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
                    NavigationLink(destination: Match_CLView()) {
                        HStack{
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
                    
                }
            }
                .navigationTitle("Matches")
            }
        
    }
}

#Preview {
    LeagueView()
}
