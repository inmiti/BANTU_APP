//
//  HeaderView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 6/4/24.
//

import SwiftUI

struct HeaderView: View {
    var headerText: String = ""
    var nameButtonHeader: String = ""
    var systemNameImage: String = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
            
            Rectangle()
                .fill(LinearGradient(
                    colors: [Color.bantu_orange, Color.bantu_pink],
                    startPoint: .leading,
                    endPoint: .trailing)
                )
                .opacity(0.90)
                .ignoresSafeArea()
                .frame(height: 130)
            
            HStack(spacing: 24) {
                Image("Icon2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top, 32)
                
                Text(headerText)
                    .font(.system(size: 28))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .lineLimit(1)
                    .padding(.top, 48)
                Spacer()
                Button(action: {
                    //TODO: Añadir variable para acción
                }, label: {
                    Text(nameButtonHeader)
                        .font(.system(size: 15))
                        .foregroundColor(.black)
                        .frame(maxWidth: 70)
                    Image(systemName: systemNameImage)
                        .foregroundColor(.black)
                })
                .padding(.top,42)
            }
            .padding(.horizontal, 16)
        }
        .frame(height: 130)
    }
}


//#Preview {
//        HeaderView()
//}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(headerText: "Profesionales",
                   nameButtonHeader : "Publica contenido",
                   systemNameImage: "plus")
        .previewLayout(.sizeThatFits)
    }
}
