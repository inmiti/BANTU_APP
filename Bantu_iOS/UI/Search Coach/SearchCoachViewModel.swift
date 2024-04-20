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
    @Published var coachers = []
    
    @Published var filteredCoachers = [Coach]()
    
    @Published var coachersType: TypeId = .entrenador {
        didSet {
            // filteredCoachers = filterCoachBy()
        }
    }
    
//    func filterCoachBy() -> [Coach] {
//        switch coachersType {
//        case .nutricionista:
//            return coachers.filter {$0.type_id == 1}
//        case .entrenador:
//            return coachers.filter {$0.type_id == 2}
//        case .fisioterapeuta:
//            return coachers.filter {$0.type_id == 3}
//        case .otros:
//            return coachers.filter {$0.type_id == 4}
//        }
//    }
}

