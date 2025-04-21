//
//  ContentView.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var currentIndex = 0
    @State private var searchText = ""
    @State private var showSheet = false
    @StateObject private var viewModel = CarouselViewModel()
    
    var filteredItems: [ListItem] {
        viewModel.items.filter { item in
            searchText.isEmpty || item.title.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var titleArray: [String] {
        viewModel.items.map { item in
            item.title
        }
    }

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack(spacing: 0) {
                    CarouselView(items: viewModel.items, currentIndex: $currentIndex)
                    
                    SearchBarView(text: $searchText)
                        .padding(.top, 8)
                    ScrollView {
                        VStack(spacing: 12) {
                            ForEach(filteredItems, id: \.id) { item in
                                ListCardView(item: item)
                            }
                        }
                        .padding(.top, 12)
                    }
                }
                
                FAB {
                    showSheet.toggle()
                }
                .padding()
                .sheet(isPresented: $showSheet) {
                    StatsSheetView(items: titleArray)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
