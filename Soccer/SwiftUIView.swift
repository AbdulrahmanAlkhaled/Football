//
//  SwiftUIView.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 16/12/2023.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject var vm = MatchViewModel()
    var body: some View {
        VStack{
            if vm.matches.isEmpty {
                ProgressView()
            }else {
                 ForEach(vm.matches.indices, id: \ .self) { i in
                     AsyncImage(url: vm.matches[i].hostLogo) { result in
                        if let image = result.image {
                          image  
                            .resizable()
                            .scaledToFit()
                            .frame(width: 8 * 12 * 2, height: 8 * 12 * 2)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        } else if result.error != nil {
                          Image(systemName: "exclamationmark.triangle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 8 * 4 * 2, height: 8 * 4 * 2)
                            .foregroundColor(.teal)
                            .frame(width: 8 * 12 * 2, height: 8 * 12 * 2)
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        } else {
                          ProgressView()
                            .frame(width: 8 * 12 * 2, height: 8 * 12 * 2)
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .tint(.white)
                        }
                      }
                }
            }
        }
            .onAppear {
                Task {
                    await vm.fetch()
                }
            }
        
    }
}
#Preview {
    SwiftUIView()
}
