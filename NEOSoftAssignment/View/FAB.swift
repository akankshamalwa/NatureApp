//
//  FAB.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 21/04/25.
//

import SwiftUI

struct FAB: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "ellipsis")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .padding()
                .background(Circle().fill(Color.blue))
                .shadow(radius: 4)
        }
    }
}

#Preview {
    FAB(action: {})
}
