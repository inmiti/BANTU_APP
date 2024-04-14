//
//  CoachCell.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import SwiftUI

struct CoachCell: View {
    let coach: Coach
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: coach.avatar ?? "ragnar-lothbrok"), content: { image in
                image
                    .resizable()
                    .scaledToFit()
            }, placeholder: {
                Image(systemName: "photo")
            })
            .opacity(0.6)
            .cornerRadius(18)
            .shadow(radius: 12)
            .frame(width: 300, height: 200)
            .padding()
            
            VStack{
                Text(coach.first_name ?? "Personaje")
                    .font(.title)
                    .bold()
                Text(coach.description ?? "Titulo del personaje")
                    .font(.title3)
            }
        }
        .frame(height: 200)
        .padding(12)
    }
        
    }


#Preview {
    CoachCell( coach: Coach(first_name: "Ragnar Lodbrok", last_name1: "Ragnar", last_name2: "", country: .España, province: .Madrid, city: "Madrid", postal_code: 28039, avatar: "", email: "", password: "", id: 12, nif: "24589614N", telephone: 666666666, type_id: 1, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"))
}
