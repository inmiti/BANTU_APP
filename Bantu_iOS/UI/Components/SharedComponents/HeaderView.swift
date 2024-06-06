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
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .lineLimit(1)
                    .padding(.top, 48)
                Spacer()
                Button(action: {
                    //TODO: Añadir variable para acción
                }, label: {
                    Text(nameButtonHeader)
                        .font(.callout)
                        .foregroundColor(.black)
                        .frame(maxWidth: 50)
                    Image(systemName: "plus")
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
                   nameButtonHeader : "Date de alta")
        .previewLayout(.sizeThatFits)
    }
}
