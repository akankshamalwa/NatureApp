//
//  URLImageView.swift
//  NEOSoftAssignment
//
//  Created by Akanksha Dipak Bothe on 23/04/25.
//

import Foundation
import SwiftUI
import UIKit

struct URLImageView: UIViewRepresentable {
    let urlString: String
    let cornerRadius: CGFloat
    
    func makeUIView(context: Context) -> UIView {
        let containerView = UIView()
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = cornerRadius
        imageView.backgroundColor = .systemGray5
        
        containerView.addSubview(imageView)
        
        // Pin imageView to containerView edges
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
        ])
        
        containerView.tag = 100 
        return containerView
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        guard let imageView = uiView.subviews.first as? UIImageView,
              let url = URL(string: urlString) else { return }
        
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    imageView.image = image
                }
            }
        }
    }
}


#Preview {
    URLImageView(urlString: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d", cornerRadius: 8)
}
