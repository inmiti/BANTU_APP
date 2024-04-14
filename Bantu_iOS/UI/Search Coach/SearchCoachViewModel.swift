//
//  SearchCoachViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import Foundation

enum TypeId: String, CaseIterable {
    case nutricionista = "Nutricionista"
    case entrenador = "Entrenador Personal"
    case fisioterapeuta = "Fisioterapeuta"
    case otros = "Otros"
}

final class SearchCoachViewModel: ObservableObject {
    @Published var coachers = [
        Coach(id: 12, nif: "24589614N", telephone: 666666666, type_id: 1, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 1, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 1, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 2, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 2, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 2, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 2, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 2, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 2, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 3, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 3, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 3, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 3, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 4, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
        Coach(id: 13, nif: "24589615N", telephone: 666666667, type_id: 4, suscription_id: 2, photo: "ragnar-lothbrok", description: "Profesional con más de 10 años de experiencia siempre dispuesto a dar lo mejor por mis clientes. No lo dudes, saldrás más fuerte"),
      
    ]
    
    @Published var filteredCoachers = [Coach]()
    
    @Published var coachersType: TypeId = .entrenador {
        didSet {
            filteredCoachers = filterCoachBy()
        }
    }
    
    func filterCoachBy() -> [Coach] {
        switch coachersType {
        case .nutricionista:
            return coachers.filter {$0.type_id == 1}
        case .entrenador:
            return coachers.filter {$0.type_id == 2}
        case .fisioterapeuta:
            return coachers.filter {$0.type_id == 3}
        case .otros:
            return coachers.filter {$0.type_id == 4}
        }
    }
}

