//
//  AlertView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 13/4/24.
//

import SwiftUI

struct AlertView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white.opacity(0.1))
                .ignoresSafeArea()
            VStack(spacing: 8) {
                Image("alert_img")
                Text("Parece que algo salió mal")
                    .foregroundColor(.black)
                    .bold()
                    .font(.title)
                    .padding(.bottom)
                    .padding(.horizontal)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.white)
            )
        }
    }
}



#Preview {
    AlertView()
}
