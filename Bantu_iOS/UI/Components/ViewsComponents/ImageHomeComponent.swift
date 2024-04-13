//
//  ImageHomeComponent.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import SwiftUI

struct ImageHomeComponent: View {
    
    let image: String
    let text: String
    let height: CGFloat
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            
            Text(text)
                .font(.system(size: 17))
                .fontWeight(.bold)
                .foregroundColor(Color.bantu_orange)
                .frame(maxWidth: .infinity)
                .background(Color.black.opacity(0.3))
                .padding(.horizontal)
                
        }
        .frame(height: height)
        .shadow(color: .black.opacity(0.5), radius: 6, x: 4, y: 4)
    }
}

#Preview {
    ImageHomeComponent(image: "profesionales", text: "Tu texto aquísadsdfsdfsdff", height: 350)
}
