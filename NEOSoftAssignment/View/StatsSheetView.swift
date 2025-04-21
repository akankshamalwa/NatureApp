//
//  StatsSheetView.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import SwiftUI

struct StatsSheetView: View {
    let items: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("List (\(items.count) items)")
                .font(.title3)
                .bold()
            
            let stats = characterStats(from: items)
            ForEach(stats.prefix(3), id: \.key) { char, count in
                Text("\(char) = \(count)")
            }
            
            Spacer()
        }
        .padding()
        .presentationDetents([.medium])
    }
    
    func characterStats(from list: [String]) -> [(key: Character, value: Int)] {
        let joined = list.joined()
        let freq = joined.reduce(into: [Character: Int]()) { counts, char in
            if char.isLetter {
                counts[char, default: 0] += 1
            }
        }
        return freq.sorted { $0.value > $1.value }
    }
}

#Preview {
    StatsSheetView(items: ["Flower"])
}
