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
             photo: "http://90.163.132.130:8090/bantu/user00.png",
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
            photo:"http://90.163.132.130:8090/bantu/user02.png",
            password:"123456",
            active:true
        ),
        User(
            id: 3,
            name: "JOAN",
            lastName1:"PRADELLS",
            lastName2:"MARTINEZ",
            postalCode:"46001",
            email:"jpadrells@bantu.com",
            city:"Valencia",
            photo:"http://90.163.132.130:8090/bantu/user03.png",
            password:"123456",
            active:true
        )
    ]    
}
