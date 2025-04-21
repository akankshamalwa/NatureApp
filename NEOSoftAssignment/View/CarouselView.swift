//
//  CarouselView.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import SwiftUI

struct CarouselView: View {
    let items: [ListItem]
    @Binding var currentIndex: Int
    init(items: [ListItem], currentIndex: Binding<Int>) {
        self.items = items
        self._currentIndex = currentIndex
        UIPageControl.appearance().currentPageIndicatorTintColor = .darkGray
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.gray.withAlphaComponent(0.4)
    }
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(items.indices, id: \.self) { index in
                URLImageView(urlString: items[index].imageURL, cornerRadius: 8)
                    .frame(width: 250, height: 180)
                    .clipped()
                    .cornerRadius(8)
                    .padding(.leading, 10)
            }
        }
        .frame(height: 280)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselView(items: [ListItem(title: "Rocky Stream", subtitle: "Water flowing over mossy rocks", imageURL: "https://images.unsplash.com/photo-1523978591478-c753949ff840")], currentIndex: .constant(1))
}
