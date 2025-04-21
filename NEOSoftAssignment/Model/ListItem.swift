//
//  ListItem.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import Foundation

struct List: Decodable {
    let model: [ListItem]
}

struct ListItem: Identifiable, Decodable {
    let title: String
    let subtitle: String
    let imageURL: String
    
    var id: UUID { UUID() }
}
