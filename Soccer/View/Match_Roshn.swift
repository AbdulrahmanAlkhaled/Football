//
//  Match_Roshn.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 17/12/2023.
//

import SwiftUI

struct Match_Roshn: View {
    @StateObject var vm = MatchViewModel()

    var body: some View {
        ZStack{
            if vm.matches.isEmpty {
                ProgressView()
            }
            else {
                VStack{
                       
                    ScrollView {
                            ForEach(vm.matches.indices, id: \ .self) { i in
                                VStack (spacing: -10){
                                    Text(vm.matches[i].status)
                                        .bold()
                                    HStack(spacing: 30){
                                        VStack(spacing:10){
                                            AsyncImage(url: vm.matches[i].guestLogo) { result in
                                                if let image = result.image {
                                                    image
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width:50, height: 50)
                                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                                        
                                                } else {
                                                    ProgressView()
                                                }
                                            }
                                            Text(vm.matches[i].hostTeam)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        VStack {
                                            Text(vm.matches[i].matchInfo)
                                                .font(.title3)
                                                .bold()
                                                .foregroundStyle(.red)
                                            Text(vm.matches[i].created_at)
                                        }
                                        .frame(height: 60)
                                        .padding(.vertical)
                                        VStack(spacing:10) {
                                            AsyncImage(url: vm.matches[i].hostLogo) { result in
                                                 if let image = result.image {
                                                    image
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width:50, height: 50)
                                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                                    
                                                } else {
                                                    ProgressView()
                                                }
                                            }
                                            Text(vm.matches[i].guestTeam)
                                        }
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        
                                    }
                                   
                                }.padding()
                                    .background(RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.gray, lineWidth: 0.2)
                                        .frame(width: 350)
                                    )
                            }
                        }.padding()
                        
                    }
                
                }      
            
        }
        .onAppear {
            Task {
                await vm.fetch4()
            }
        }
    }
}

#Preview {
    Match_Roshn()
}
