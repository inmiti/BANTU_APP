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
            //Background
            Image(decorative:"")
                .resizable()
                .background(Color.bantu_background)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Header
                DetailHeaderView(photo: professional.photo,
                                 name: professional.name,
                                 firstName: professional.lastName1)
                .ignoresSafeArea(edges: .top)
                
                // Description
                if let description = professional.professional?.description {
                    Text(description)
                        .foregroundColor(.bantu_text)
                        .font(.title2)
                        .padding(.horizontal, 24)
                        .padding()
                }
                
                // Button "Contáctame"
                Button {
                    //Action:
                    // TODO: Incluir accion de navegar al chat con el profesional
                } label: {
                    HStack(spacing: 24 ){
                        Image(systemName: "ellipsis.message")
                            .foregroundColor(.black)
                        
                        Text("Contáctame")
                            .foregroundColor(.bantu_orange)
                            .font(.title2)
                        Spacer()
                    }
                    .padding(.horizontal, 24)
                    .padding()
                }
                // Button "Accede a mis entrenamientos"
                HStack {
                    Button("Accede a mis entrenamientos") {
                        // Action
                        // TODO: Incluir acción del boton navegar a sus entrenamientos
                    }
                    .foregroundColor(.black)
                    .font(.title2)
                    Spacer()
                    
                }
                .padding(.horizontal, 24)
                .padding()
                
                // Button "Mis publicaciones
                HStack {
                    Button("Mis publicaciones") {
                        // Action
                        // TODO: Incluir acción del boton navegar a sus entrenamientos
                    }
                    .foregroundColor(.black)
                    .font(.title2)
                    Spacer()
                }
                .padding(.horizontal, 24)
                .padding()
                
                Spacer()
            }
                
                Spacer()
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
