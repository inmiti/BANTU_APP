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
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.grey_cell)
                .overlay(
                    HStack(spacing: 32) {
                       AsyncImage(url: URL(string: photo))
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                    
                        VStack(alignment: .leading) {
                            Text("\(name) \(firstName)" )
                                .font(.title)
                                .bold()
                                .font(.system(size: 20))
                            Text(coachDescription)
                                .font(.body)
                            
                        }
                    }
                )
                .frame(height: 100)
                .padding()
                
        }}

//#Preview {
//    SearchCoachCell(nickName: "Silvia", coachDescription: "Esto es una breve descripción", photo: "hkdchsckjhcskj")
//}

struct SearchCoachCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCoachCell(name: "Eva", firstName: "Nasarre", coachDescription: "Esto es una breve descripción", photo: "http.foto")
    }
}
