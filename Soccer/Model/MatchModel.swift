//
//  MatchModel.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 15/12/2023.
//

import Foundation

struct MatchModel: Identifiable, Codable {
    let id: UUID
    var matchInfo: String
    var hostTeam: String
    var guestTeam: String
    var status: String
    var hostLogo: URL
    var guestLogo: URL
    var created_at: String
}

