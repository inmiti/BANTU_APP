//
//  LoaderView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 13/4/24.
//

import SwiftUI

struct LoaderView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white.opacity(0.1))
                .ignoresSafeArea()
            VStack(spacing: 8) {
                ProgressView()
                    .tint(.black)
                    .padding(.top)
                Text("LOADING")
                    .foregroundColor(.black)
                    .bold()
                    .padding(.bottom)
                    .padding(.horizontal)
            }
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.bantu_pink)
            )
        }
    }
}

#Preview {
    LoaderView()
}
