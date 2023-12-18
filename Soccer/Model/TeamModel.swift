//
//  TeamModel.swift
//  Soccer
//
//  Created by ABDULRAHMAN AL-KHALED on 15/12/2023.
//

import Foundation

struct TeamModel: Identifiable, Codable {
    let id: UUID
    var teamName: String
    var leagueName: String
    var logo: URL
}
