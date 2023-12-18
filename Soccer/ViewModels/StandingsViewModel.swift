//
//  StandingsViewModel.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 17/12/2023.
//

import Foundation

class StandingsViewModel: ObservableObject{
    
    @Published var standings: [StandingModel] = []
    @Published var lnum: Int = 0
    @Published var league: String = ""
    
    
    
    func fetchStandings() async {
        switch lnum {
        case 1:
            league = "Standings_PL"
        case 2:
            league = "Standings_LL"
        case 3:
            league = "Standings_Roshn"
        case 4:
            league = "Standings_Serie"
        case 5:
            league = "Standings_CL"
        default:
            league = ""

        }
        
        var request = URLRequest(url: URL(string: "https://dumzjyhtctorwhbrmamz.supabase.co/rest/v1/\(league)?select=*")!,timeoutInterval: Double.infinity)

        // Set your headers here
        request.setValue("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR1bXpqeWh0Y3RvcndoYnJtYW16Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI1OTE2MTQsImV4cCI6MjAxODE2NzYxNH0.I_sPKeT4Dnu7Mzh23YaBiSNWqnrZZROYzRhhezLtByA", forHTTPHeaderField: "apikey")
        request.setValue("Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR1bXpqeWh0Y3RvcndoYnJtYW16Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI1OTE2MTQsImV4cCI6MjAxODE2NzYxNH0.I_sPKeT4Dnu7Mzh23YaBiSNWqnrZZROYzRhhezLtByA", forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"

        let session = URLSession.shared
        let task = session.dataTask(with: request) { [self] data, response, error in
            if let error = error {
                print("Error with fetching data: \(error)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                print("Error with the response, unexpected status code: \(String(describing: response))")
                return
            }
            
            
            
            
            
            
            if let data = data,
               let dataString = String(data: data, encoding: .utf8) {
                
                do {
                    
                    let decoder = JSONDecoder()
                    
                    let decodedData = try decoder.decode([StandingModel].self, from: data )
                    
                    standings = decodedData
                    
                    
                    
                } catch {
                    print(error)
                }
                
                
                
                print("Response data string:\n \(dataString)")
            }
            
            
            
            
            
        }
        
        
        task.resume()
    }
}
