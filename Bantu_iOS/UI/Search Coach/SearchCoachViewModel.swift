//
//  SearchCoachViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import Foundation
enum NameProfessional: String {
    case entrenador = "Entrenador"
    case nutricionista = "Nutricionista"
    case dietista = "Dietista"
    case fisioterapeuta = "Fisioterapeuta"
}

@MainActor
final class SearchCoachViewModel: ObservableObject {
    let networkResponse = NetworkResponse.shared
   
    @Published var isLoading = false
    @Published var users: [UserMock] = []
    @Published var searchText = "" {
        didSet {
            filteredCoachers = professionals.filter {($0.user?.name ?? "").lowercased().hasPrefix(searchText.lowercased())}
        }
    }
    @Published var professionals = [Professional]()
    @Published var filteredCoachers: [Professional] = []
    @Published var coachersType: CoachType = .entrenador {
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
            print("los prog \(professionals)")
            case .failure(let error as NetworkErrors):
                print("error \(error)")
            case .failure(_):
                print("error")
            }
        isLoading = false
    }
    
    func filterCoachBy() -> [Professional] {
        switch coachersType {
        case .entrenador:
            return professionals.filter {$0.id == 1}
        case .nutricionista:
            return professionals.filter {$0.id == 2}
        case .dietista:
            return professionals.filter {$0.id == 3}
        case .fisioterapeuta:
            return professionals.filter {$0.id == 4}
        default:
            return professionals
        }
    }
    
    
    func filteredItems(_ searchText: String) -> [String] {
            let items = professionals.compactMap { professional in
                professional.user?.name
            }
            if searchText.isEmpty {
                return items
            } else {
                return items.filter { $0.localizedCaseInsensitiveContains(searchText) }
            }
    }
}

