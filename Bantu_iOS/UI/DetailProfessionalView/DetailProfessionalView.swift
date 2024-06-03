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
        VStack{
            if let name = professional.name  {
                Text(name)
            }
           
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
            photo: "https://www.dropbox.com/scl/fi/tzvx69ys248s3tlzxygzj/user04.png?rlkey=fbpe3s43c3r5v6z7417gvgu70&st=d60ha2xz&dl=0",
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
