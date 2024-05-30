//
//  UserFake.swift
//  Bantu_iOS
//
//  Created by ibautista on 24/4/24.
//

import Foundation

struct UserFake {
    let responseUser: [User] = [
        User(id: 1,
             name: "TestUsuario",
             lastName1: "Testapellido",
             lastName2: "TestApellido",
             postalCode: "00000",
             email: "test@email.es",
             city: "TEST",
             photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
             password: "password",
             active: true
            ),
        User(
            id:2,
            name: "JOSEP",
            lastName1:"GUARDIOLA",
            lastName2:"I SALA",
            postalCode:"8240",
            email:"pep.guardiola@manchester.uk",
            city:"Santpedor",
            photo:"https://github.com/inmiti/images/blob/main/user02.png",
            password:"123456",
            active:true,
            professional: Professional(description: "Actualmente dirijo al Manchester City F. C. de la Premier League de Inglaterra",
                                       id: 1,
                                       type: ProfessionalType(
                                          id: 1,
                                          type: "ENTRENADOR PERSONAL"))
                                      ),
        User(
            id: 3,
            name: "JOAN",
            lastName1:"PRADELLS",
            lastName2:"MARTINEZ",
            postalCode:"46001",
            email:"jpadrells@bantu.com",
            city:"Valencia",
            photo:"https://www.dropbox.com/scl/fi/2mzcmahlzy1acg6xnwyxn/user03.png?rlkey=9l5z859hkr3aefm9z7hcj8vpz&st=5yumrgh8&dl=0",
            password:"123456",
            active:true,
            professional: Professional(description: "Culturista, youtuber y streamer español",
                                       id: 2,
                                       type: ProfessionalType(
                                          id: 1,
                                          type: "ENTRENADOR PERSONAL"))
        ),
        User(
            id: 4,
            name: "DAVID",
            lastName1: "MUÑOZ",
            lastName2: "ROSILLO",
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
                                        type: "DIETISTA"))
        ),
        User(id: 5,
             name: "DAVID",
             lastName1: "DE JORGE",
             lastName2: "EZEIBARRENA",
             postalCode: "20280",
             email: "jezeibarrena@bantu.com",
             city: "HONDARRIBIA",
             photo: "https://www.dropbox.com/scl/fi/fzr2eftpicaq3xd2bphcz/user05.png?rlkey=8aozq2hun67bsckjd4qwbmt7g&st=kwh28hap&dl=0",
             password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y",
             active: true,
            professional: Professional(description: "Gerente de la editorial Gourmandia, autor de varios libros gastronómicos y de variados blogs.En 2008 dirigió y presentó el programa de ETB2 Cocina sin bobadas",
                                       id: 4,
                                       type: ProfessionalType(id: 3, type: "DIETISTA"))
            ),
        User(id: 6,
             name: "FRANCISCO",
             lastName1: "SUAREZ",
             lastName2: "RODRIGUEZ",
             postalCode: "28100",
             email: "fsuarez@bantu.com",
             city: "MADRID",
             photo: "https://www.dropbox.com/scl/fi/6rqaw0vjqw7908avqlya7/user06.png?rlkey=fb5ms6wrq13guz798ykqv2rgi&st=99o24yjd&dl=0",
             password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y",
             active: true,
            professional: Professional(description: "Monitor de Gimnasio, enfermero y bailarín.Tengo 27 años, enfermero cacereño afincado en Madrid y Fisioterapeuta",
                                       id: 5,
                                       type: ProfessionalType(id: 4, type: "FISIOTERAPEUTA"))),
    ]    
}
