//
//  ChatsFake.swift
//  Bantu_iOS
//
//  Created by ibautista on 20/6/24.
//

import Foundation

struct ChatsFake {
    let response: [Chat] = [
        Chat(
            id: 1,
            message: "Estoy de acuerdo con que debo practicar más la musculatura superior, pero es lo que más me cuesta.",
            user: User(name: "Isabel", photo: "https://avatars.githubusercontent.com/u/1?v=4"),
            date: "2023-12-05"
        ),
        Chat(
            id: 2,
            message: "Hola Isabel, te recomiendo empezar con ejercicios ligeros y aumentar la intensidad gradualmente.",
            user: User(name: "Carlos", photo: "https://avatars.githubusercontent.com/u/2?v=4"), // Entrenador
            date: "2023-12-06"
        ),
        Chat(
            id: 3,
            message: "¡Gracias, Carlos! ¿Cuántas veces a la semana debería entrenar?",
            user: User(name: "María", photo: "https://avatars.githubusercontent.com/u/1?v=4"),
            date: "2023-12-06"
        ),
        Chat(
            id: 4,
            message: "Tres veces a la semana es un buen comienzo. No olvides estirar antes y después de cada sesión.",
            user: User(name: "Andrés", photo: "https://avatars.githubusercontent.com/u/2?v=4"), // Entrenador
            date: "2023-12-06"
        ),
        Chat(
            id: 5,
            message: "Últimamente he estado muy estresada, ¿podrías recomendarme alguna técnica de relajación?",
            user: User(name: "Eva", photo: "https://avatars.githubusercontent.com/u/1?v=4"),
            date: "2023-12-07"
        ),
        Chat(
            id: 6,
            message: "Claro, Isabel. La respiración profunda y la meditación son excelentes técnicas. ¿Te gustaría una guía sobre cómo empezar?",
            user: User(name: "Betty", photo: "https://avatars.githubusercontent.com/u/3?v=4"), // Psicóloga
            date: "2023-12-07"
        ),
        Chat(
            id: 7,
            message: "Sí, por favor. No estoy segura de cómo empezar.",
            user: User(name: "Alba", photo: "https://avatars.githubusercontent.com/u/1?v=4"),
            date: "2023-12-07"
        ),
    Chat(
        id: 8,
        message: "Te enviaré un enlace a una meditación guiada para principiantes. Es un buen punto de partida.",
        user: User(name: "Lucía", photo: "https://avatars.githubusercontent.com/u/2319867?v=4"), // Psicóloga
        date: "2023-12-07"
    ),
    Chat(
        id: 9,
        message: "He notado algo de dolor en mi espalda baja después de los ejercicios. ¿Es normal?",
        user: User(name: "Perico", photo: "https://avatars.githubusercontent.com/u/583231?v=4"),
        date: "2023-12-08"
    ),
    Chat(
        id: 10,
        message: "Podría ser por la postura. Te recomiendo revisarla y si el dolor persiste, podríamos hacer una evaluación más detallada.",
        user: User(name: "Paula", photo: "https://avatars.githubusercontent.com/u/1024025?v=4"), // Fisioterapeuta
        date: "2023-12-08"
    ),
    Chat(
        id: 11,
        message: "Gracias, Pedro. Trataré de ser más consciente de mi postura.",
        user: User(name: "Alberto", photo: "https://avatars.githubusercontent.com/u/583231?v=4"),
        date: "2023-12-08"
    ),
    Chat(
        id: 12,
        message: "Estoy aquí para ayudarte. No dudes en contactarme si el dolor no mejora.",
        user: User(name: "Luis", photo: "https://avatars.githubusercontent.com/u/1024025?v=4"), // Fisioterapeuta
        date: "2023-12-08"
    )
    ]
}
