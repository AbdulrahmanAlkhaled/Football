//
//  LeagueModel.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 15/12/2023.
//

import Foundation

struct LeagueModel: Identifiable, Codable {
    let id: UUID
    var name: String
    var logo: URL
}
