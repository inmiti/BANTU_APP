//
//  DetailProfessionalView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 21/4/24.
//

import SwiftUI

struct DetailProfessionalView: View {
    var professional: User
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(height: 430)
                .foregroundColor(.white)
                .ignoresSafeArea(edges: .top)
            
            Rectangle()
                .fill(LinearGradient(
                    colors: [Color.bantu_orange, Color.bantu_pink],
                    startPoint: .bottom,
                    endPoint: .top)
                )
//                .opacity(0.90)
                .ignoresSafeArea()
                .frame(height: 400)
            
            VStack{
               Spacer()
               
                AsyncImage(url: URL(string: professional.photo ?? "person.circle")) { image in
                    image
                        .resizable()
                        .frame(width: 180, height: 180)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .shadow(color: .black.opacity(0.5), radius: 4, x: 0, y: 4)
                }

            placeholder: {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .foregroundColor(.gray)

                }
                
                if let name = professional.name, let firstname = professional.lastName1 {
                    Text("\(name) \(firstname)")
                        .padding(.top, 48)
                        .padding(.bottom, 24)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.semibold)
                        
                }
                    
               
            }
            .frame(height: 400)
            
        }
    }
}

//#Preview {
//    DetailProfessionalView()
//}

struct DetailProfessionalView_Previews: PreviewProvider {
    static var previews: some View {
        DetailProfessionalView(professional:  User(
            id: 4,
            name: "David",
            lastName1: "Muñoz",
            lastName2: "Rosillo",
            postalCode: "28001",
            email: "dmunoz@bantu.com",
            city: "Madrid",
            photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
            password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y",
            active: true,
            professional: Professional(description: "Cocinero español especializado en cocina de vanguardia. Su restaurante DiverXo ha recibido tres estrellas Michelin",
                                       id: 3,
                                       type: ProfessionalType(
                                        id: 3,
                                        type: "DIETISTA")
                                      )))
    }
}
