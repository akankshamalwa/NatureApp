//
//  CarouselViewModel.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import Foundation

class CarouselViewModel: ObservableObject {
    @Published var items: [ListItem] = []
    
    init() {
        loadItems()
    }
    
    func loadItems() {
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
            print("JSON file not found")
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let list = try JSONDecoder().decode(List.self, from: data)
            self.items = list.model
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
}
