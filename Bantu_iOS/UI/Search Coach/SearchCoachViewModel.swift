//
//  SearchCoachViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import Foundation

enum NameProfessional: String, CaseIterable {
    case nutricionista = "Nutricionista"
    case entrenador = "Entrenador Personal"
    case fisioterapeuta = "Fisioterapeuta"
    case dietista = "Otros"
}

@MainActor
final class SearchCoachViewModel: ObservableObject {
    let networkResponse = NetworkResponse.shared
    
    @Published var isLoading = false
    @Published var users: [UserMock] = []
    //@Published var professionals: [Coach] = []
    @Published var professionals = [Professional]()
    @Published var filteredCoachers: [Professional] = [.coachTest]
    @Published var coachersType: NameProfessional = .entrenador {
        didSet {
            filteredCoachers = filterCoachBy()
        }
    }
    init() {
        Task {
           await getProfessionals()
            print(professionals)
        }
    }
    
    func getProfessionals() async  {
        guard let token = KeyChain.shared.getToken() else { return }
        print(token)
        let task = Task(priority: .background) {
                return try await networkResponse.getProfessionals(token: token)
            }
        switch await task.result {
            case .success(let response):
            professionals = response
            print(professionals)
            case .failure(let error as NetworkErrors):
                print("error")
            case .failure(_):
                print("error")
            }
        isLoading = false
    }
    
    func filterCoachBy() -> [Professional] {
        switch coachersType {
        case .entrenador:
            return professionals.filter {$0.coachType == .coach}
        case .nutricionista:
            return professionals.filter {$0.coachType == .nutricionist}
        case .dietista:
            return professionals.filter {$0.coachType == .dietist}
        case .fisioterapeuta:
            return professionals.filter {$0.coachType == .fisio}
     
        }
    }
}

