//
//  ProfessionalFake.swift
//  Bantu_iOS
//
//  Created by ibautista on 24/4/24.
//

import Foundation

struct ProfessionalFake {
    let responseProfessional: [Professional] = [
        Professional(description: "Actualmente dirijo al Manchester City F. C. de la Premier League de Inglaterra",
                     id: 1,
                     type: ProfessionalType(
                        id: 1,
                        type: "ENTRENADOR")
//                     ,
//                     user: User(
//                        id: 2,
//                        name: "JOSEP",
//                        lastName1:"GUARDIOLA",
//                        lastName2:"I SALA",
//                        postalCode:"8240",
//                        email:"pep.guardiola@manchester.uk",
//                        city:"Santpedor",
//                        photo:"http://90.163.132.130:8090/bantu/user02.png",
//                        password:"123456",
//                        active:true
//                     )
                    ),
         Professional(description: "Culturista, youtuber y streamer español",
                      id: 2,
                      type: ProfessionalType(
                         id: 1,
                         type: "ENTRENADOR")
//                      ,
//                      user: User(
                      //                        id: 3,
                      //                         name: "JOAN",
                      //                         lastName1:"PRADELLS",
                      //                         lastName2:"MARTINEZ",
                      //                         postalCode:"46001",
                      //                         email:"jpadrells@bantu.com",
                      //                         city:"Valencia",
                      //                         photo:"http://90.163.132.130:8090/bantu/user03.png",
                      //                         password:"123456",
                      //                         active:true
                      //                      )
                     ),
        Professional(description: "Cocinero español especializado en cocina de vanguardia. Su restaurante DiverXo ha recibido tres estrellas Michelin",
                     id: 3,
                     type: ProfessionalType(
                        id: 3,
                        type: "DIETISTA")
//                     ,
//                     user: User(
//                        id: 4,
//                        name: "DAVID",
//                        lastName1: "MUÑOZ",
//                        lastName2: "ROSILLO",
//                        postalCode: "28001",
//                        email: "dmunoz@bantu.com",
//                        city: "Madrid",
//                        photo: "http://90.163.132.130:8090/bantu/user04.png",
//                        password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y",
//                        active: true)
                    ),
        Professional(description: "Gerente de la editorial Gourmandia, autor de varios libros gastronómicos y de variados blogs.En 2008 dirigió y presentó el programa de ETB2 Cocina sin bobadas",
                     id: 4,
                     type: ProfessionalType(id: 3, type: "DIETISTA")
//                     ,
//                     user: User(id: 5,
//                                name: "DAVID",
//                                lastName1: "DE JORGE",
//                                lastName2: "EZEIBARRENA",
//                                postalCode: "20280",
//                                email: "jezeibarrena@bantu.com",
//                                city: "HONDARRIBIA",
//                                photo: "http://90.163.132.130:8090/bantu/user05.png",
//                                password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y",
//                                active: true)
                    ),
        Professional(description: "Monitor de Gimnasio, enfermero y bailarín.Tengo 27 años, enfermero cacereño afincado en Madrid y Fisioterapeuta",
                     id: 5,
                     type: ProfessionalType(id: 4, type: "FISIOTERAPEUTA")
//                     ,
//                     user: User(id: 6,
//                                name: "FRANCISCO",
//                                lastName1: "SUAREZ",
//                                lastName2: "RODRIGUEZ",
//                                postalCode: "28100",
//                                email: "fsuarez@bantu.com",
//                                city: "MADRID",
//                                photo: "http://90.163.132.130:8090/bantu/user06.png",
//                                password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y",
//                                active: true)
                    ),
    ]
}
