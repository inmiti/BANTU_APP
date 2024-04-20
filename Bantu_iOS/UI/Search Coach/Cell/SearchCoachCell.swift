//
//  SearchCoachCell.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 19/4/24.
//

import SwiftUI

struct SearchCoachCell: View {
    let nickName: String = "Personaje"
        let coachDescription: String = "Esto es una descripción de un profesional con más de 10 años de experiencia. Buscando la mejor solución para mis clientes"
        
        var body: some View {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.grey_cell)
                .overlay(
                    HStack {
                        Image(.foto)
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                            .padding()
                        
//                        AsyncImage(url: URL(string: "https://http://90.163.132.130:8090/bantu/user00.png"))
//                            .frame(width: 70, height: 70)
//                            .clipShape(Circle())
//                            .padding()
                        
                        VStack(alignment: .leading) {
                            Text(nickName)
                                .font(.title2)
                                .bold()
                            Text(coachDescription)
                                .font(.body)
                        }
                    }
                )
                .frame(height: 99)
                .padding(12)
                .shadow(radius: 5)
        }}

#Preview {
    SearchCoachCell()
}

