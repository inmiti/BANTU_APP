//
//  SocialFake.swift
//  Bantu_iOS
//
//  Created by ibautista on 10/6/24.
//

import Foundation

struct SocialFake {
    let socialResponse: [Social] = [
        Social(
            id: 1,
            professional:User(
                name: "eva",
                photo: "https://"),
            resource: "https://",
            description: "Descripcion publicacion de eva en la parte social"),
        Social(
            id: 2,
            professional:User(
                name: "david",
                photo: "https://"),
            resource: "https://",
            description: "Publicacion de David en la parte social"),
        Social(
            id: 3,
            professional:User(
                name: "pilar",
                photo: "https://"),
            resource: "https://",
            description: " Publicacion de pilar en la parte social"),
        Social(id: 4,
               professional:User(
                name: "nico",
                photo: "https://"),
               resource: "https://",
               description: "Descripcion publicacion de Nico en la parte social"),
        Social(
            id: 5,
            professional:User(
                name: "pedro",
                photo: "https://"),
            resource: "https://",
            description: "Publicacion de Pedro en la parte social"),
        Social(
            id: 6,
            professional:User(
                name: "lunaa",
                photo: "https://"),
            resource: "https://",
            description: "Publicación de luna en la parte social")
    ]
}
