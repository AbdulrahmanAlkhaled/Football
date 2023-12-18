//
//  StandingsModel.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 17/12/2023.
//

import Foundation

struct StandingModel: Codable, Hashable {
    let league, teamName, point, win: String
    let draw, lose: String
    let teamLogo: String

    enum CodingKeys: String, CodingKey {
        case league, teamName
        case point = "Point"
        case win = "Win"
        case draw = "Draw"
        case lose = "Lose"
        case teamLogo
        
    }
}
