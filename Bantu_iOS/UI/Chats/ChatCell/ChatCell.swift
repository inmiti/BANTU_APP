//
//  ChatCell.swift
//  Bantu_iOS
//
//  Created by ibautista on 19/6/24.
//

import SwiftUI

struct ChatCell: View {
    @State var name: String
    @State var photo: String
    @State var message: String
    @State var recivedAt: String
    @State var notRead: Bool
    
    var body: some View {
        HStack {
            // Professional photo
            AsyncImage(url: URL(string: photo)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .foregroundColor(.gray)
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
            }
            
            VStack (alignment: .leading) {
                // Professional name
                Text(name)
                    .fontWeight(.bold)
                    .font(.system(size: 28))
                    .foregroundColor(.bantu_text)
                
                // Message
                Text(message)
                    .font(.system(size: 15))
                    .foregroundColor(.bantu_text)
                    .lineLimit(1)
            }
            .padding(.horizontal)
            
           
            VStack {
                Text(recivedAt)
                    .font(.caption2)
                    .foregroundColor(.bantu_text)
                if notRead {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .frame(width: 13, height: 13)
                        .foregroundColor(.bantu_text)
                }
            }
        }
        .padding()
        // Cell background
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.bantu_cell)
                .frame(maxWidth: .infinity)
        )
    }
}

struct ChatCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatCell(name: "Eva", photo: "https://.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300", message: "Buenos días, contacto con usted para consultarle acerca de sus servicios como entrenador. Estoy interesada en ganar fuerza y agilidad.", recivedAt: "15:00", notRead: true)
    }
}
