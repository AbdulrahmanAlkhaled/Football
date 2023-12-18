//
//  TeamViewModel.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 15/12/2023.
//

import Foundation

class TeamViewModel: ObservableObject {
    @Published var teams: [TeamModel] = []
    
    func fetch() async{
        var request = URLRequest(url: URL(string: "https://dumzjyhtctorwhbrmamz.supabase.co/rest/v1/Team?select=*")!,timeoutInterval: Double.infinity)
        request.addValue("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR1bXpqeWh0Y3RvcndoYnJtYW16Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI1OTE2MTQsImV4cCI6MjAxODE2NzYxNH0.I_sPKeT4Dnu7Mzh23YaBiSNWqnrZZROYzRhhezLtByA", forHTTPHeaderField: "apikey")
        request.addValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR1bXpqeWh0Y3RvcndoYnJtYW16Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI1OTE2MTQsImV4cCI6MjAxODE2NzYxNH0.I_sPKeT4Dnu7Mzh23YaBiSNWqnrZZROYzRhhezLtByA", forHTTPHeaderField: "Authorization")

        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(String(describing: error))
                return
            }
            do {
                let decodedData = try JSONDecoder().decode([TeamModel].self, from: data)
                DispatchQueue.main.async {
                    self.teams = decodedData
                }
            } catch {
                print("Error decoding data: \(error)")
            }
        }
        
        task.resume()
        
    }
}
