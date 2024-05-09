//
//  Repository.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 21/4/24.
//

import Foundation
class RepositorySilvia {
    //static let shared = Repository()
    
    func loadJSONData(from filename: String) -> Data? {
        if let url = Bundle.main.url(forResource: filename, withExtension: "json"),
           let data = try? Data(contentsOf: url) {
            return data
        }
        return nil
    }

    let professionals = """
    {
        "pro_professionals": [
            {
                "professional_id" : 1,
                "first_name" : "TestUsuario",
                "photo" : "http://90.163.132.130:8090/bantu/user02.png",
                "id" : 2,
                "nif" : "A2222222",
                "telephone" : 938701234,
                "type_id" : 1,
                "suscription_id" : 1,
                "description" : " Actualmente dirijo al Manchester City F. C. de la Premier League de Inglaterra",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 2,
                "first_name" : "JOSEP",
                "photo" : "http://90.163.132.130:8090/bantu/user03.png",
                "id" : 3,
                "nif" : "A3333333",
                "telephone" : 968701234,
                "type_id" : 1,
                "suscription_id" : 1,
                "description" : "Culturista, youtuber y streamer español",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 3,
                "first_name" : "JOAN",
                "photo" : "http://90.163.132.130:8090/bantu/user04.png",
                "id" : 4,
                "nif" : "A4444444",
                "telephone" : 918701234,
                "type_id" : 2,
                "suscription_id" : 2,
                "description" : "Cocinero español especializado en cocina de vanguardia. Su restaurante DiverXo ha recibido tres estrellas Michelin",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 4,
                "first_name" : "DAVID",
                "photo" : "http://90.163.132.130:8090/bantu/user05.png",
                "id" : 5,
                "nif" : "A5555555",
                "telephone" : 946701234,
                "type_id" : 3,
                "suscription_id" : 1,
                "description" : "Gerente de la editorial Gourmandia, autor de varios libros gastronómicos y de variados blogs.En 2008 dirigió y presentó el programa de ETB2 Cocina sin bobadas",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 5,
                "first_name" : "DAVID",
                "photo" : "http://90.163.132.130:8090/bantu/user06.png",
                "id" : 6,
                "nif" : "A6666666",
                "telephone" : 914545698,
                "type_id" : 4,
                "suscription_id" : 1,
                "description" : "Monitor de Gimnasio, enfermero y bailarín.Tengo 27 años, enfermero cacereño afincado en Madrid y Fisioterapeuta",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 6,
                "first_name" : "FRANCISCO",
                "photo" : "http://90.163.132.130:8090/bantu/user07.png",
                "id" : 7,
                "nif" : "A7777777",
                "telephone" : 928252684,
                "type_id" : 1,
                "suscription_id" : 2,
                "description" : "I was sent here to reinstate common sense and mindfulness to people’s lives. The only way to truly pursue life-long health is to take responsibility for your own individual needs",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 7,
                "first_name" : "DASH",
                "photo" : "http://90.163.132.130:8090/bantu/user08.png",
                "id" : 8,
                "nif" : "A8888888",
                "telephone" : 958252684,
                "type_id" : 1,
                "suscription_id" : 1,
                "description" : "Culturista, entrenador personal, actor y modelo estadounidense. He aparecido en más de 400 portadas de revistas y fui siete veces modelo de fitness del año",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 8,
                "first_name" : "MIKE",
                "photo" : "http://90.163.132.130:8090/bantu/user08.png",
                "id" : 9,
                "nif" : "A9999999",
                "telephone" : 915487742,
                "type_id" : 1,
                "suscription_id" : 2,
                "description" : "Ex culturista y actriz profesional estadounidense . Como culturista, estuve dos veces entre los 10 primeros en el concurso Ms. Olympia.Estoy casada con el actor Jean-Claude van Damme",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 9,
                "first_name" : "GLADIS",
                "photo" : "http://90.163.132.130:8090/bantu/user09.png",
                "id" : 10,
                "nif" : "B111111",
                "telephone" : 912154556,
                "type_id" : 4,
                "suscription_id" : 2,
                "description" : "Además de actor y rapero, tengo el título de Fisioterapeuta de la Universidad Comillas. Actualmente soy médico rehabilitador en el Hospital Zendal.",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 10,
                "first_name" : "JUAN MANUEL",
                "photo" : "http://90.163.132.130:8090/bantu/user10.png",
                "id" : 11,
                "nif" : "B222222",
                "telephone" : 935487962,
                /Users/silviacasanovamartinez/Desktop/Bantu_iOS/Bantu_iOS/UI/Components/PickerRegisterView/PickerRegisterView.swift
                "type_id" : 4,
                "suscription_id" : 1,
                "description" : "Ejercí de monitora de aeróbic en Televisión y animaba a los telespectadores a seguir los ejercicios practicados junto a un grupo de gimnastas. A pesar de mi falta de experiencia ante las cámaras, destaqué por mi naturalidad y me convirtí en uno de los rostros más populares de TVE",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            },
            {
                "professional_id" : 11,
                "first_name" : "EVA",
                "photo" : "http://90.163.132.130:8090/bantu/user10.png",
                "id" : 12,
                "nif" : "B333333",
                "telephone" : 969587962,
                "type_id" : 1,
                "suscription_id" : 2,
                "description" : "Jugador de fútbol americano profesional y más conocido por ser actor de cine. La mayoría de mis clientes, quieren que los ponga mirando para Cuenca, así que me mudé a esta ciudad.",
                "creation_date" : "2024-04-18T18:03:15.381Z",
                "leaving_date" : null,
                "active" : true
            }
        ]
    }
"""


}
