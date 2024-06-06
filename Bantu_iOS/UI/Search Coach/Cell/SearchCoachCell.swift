//
//  SearchCoachCell.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 19/4/24.
//

import SwiftUI

struct SearchCoachCell: View {
   
    @State var name: String
    @State var firstName : String
    @State var coachDescription: String
    @State var photo: String
        
        var body: some View {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.bantu_cell)
                .overlay(
                    HStack(spacing: 32) {
                        
                        AsyncImage(url: URL(string: photo)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                        } placeholder: {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .foregroundColor(.gray)
                            
                        }

//                       AsyncImage(url: URL(string: photo))
//                            .frame(width: 70, height: 70)
//                            .clipShape(Circle())
                    
                        VStack(alignment: .leading) {
                            Text("\(name) \(firstName)" )
                                .bold()
                                .font(.system(size: 28))
                                .foregroundColor(.bantu_text)
                                
                            Text(coachDescription)
                                .font(.system(size: 15))
                                .fontWeight(.regular)
                                .foregroundColor(.bantu_text)
                            
                        }
                        .lineLimit(1)
//                        .foregroundColor(.)
                    }
                        .padding(.horizontal, 8)
                )
                .frame(height: 100)
        }}

//#Preview {
//    SearchCoachCell(nickName: "Silvia", coachDescription: "Esto es una breve descripción", photo: "hkdchsckjhcskj")
//}

struct SearchCoachCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCoachCell(name: "Eva", firstName: "Nasarre", coachDescription: "Esto es una breve descripción que varia segun el autor", photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300")
            .previewLayout(.sizeThatFits)
    }
}
