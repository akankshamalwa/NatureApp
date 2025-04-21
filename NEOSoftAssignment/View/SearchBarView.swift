//
//  SearchBarView.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding()
            TextField("Search", text: $text)
                .autocapitalization(.none)
        }
        .frame(height: 30)
        .background(Color(.systemGray5))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#Preview {
    SearchBarView(text: .constant("Flower"))
}
