//
//  ListCardView.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import SwiftUI

struct ListCardView: View {
    let item: ListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                URLImageView(urlString: item.imageURL, cornerRadius: 8)
                    .frame(width: 40, height: 40)
                    .clipped()
                    .cornerRadius(8)
                    .padding(.leading, 10)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.title)
                    .font(.headline)
                Text(item.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 10)
            Spacer()
        }
        .frame(width: 350, height: 50)
        .background(Color.mint.opacity(0.3))
        .cornerRadius(16)
    }
}

#Preview {
    ListCardView(item: ListItem(title: "Waterfall", subtitle: "Gentle falls deep in nature", imageURL: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d"))
}
