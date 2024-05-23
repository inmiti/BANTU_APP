//
//  SearchCoachViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import Foundation
//enum NameProfessional: String {
//    case entrenador = "Entrenador"
//    case nutricionista = "Nutricionista"
//    case dietista = "Dietista"
//    case fisioterapeuta = "Fisioterapeuta"
//}

@MainActor
final class SearchCoachViewModel: ObservableObject {
//    let networkResponse = NetworkResponse.shared
   
    @Published var isLoading = false
//    @Published var users: [UserMock] = []
    @Published var searchText = "" {
        didSet {
           //TODO: Que se pueda filtrar también por apellido.
            filterByNameProfessional = users.filter {($0.name ?? "").lowercased().hasPrefix(searchText.lowercased())}
        }
    }
    @Published var users = [User]()
    @Published var filterByNameProfessional: [User] = []
//    @Published var coachersType: CoachType = .entrenador {
//        didSet {
//            filteredCoachers = filterCoachBy()
//        }
//    }
    
    private var useCase: UseCaseProtocol
    
    init(useCase: UseCaseProtocol = UseCaseFake()) {
        self.useCase = useCase
//        Task {
//           await getProfessionals()
////            print(professionals)
//        }
    }
    
    func getProfessionals() async  {
//        isLoading = true
        
        guard let token = KeyChain.shared.getToken() else { return }
//        print(token)
        let task = Task(priority: .background) {
                return try await useCase.getProfessionals(token: token)
            }
        switch await task.result {
            case .success(let response):
            users = response
            print("los prog \(users)")
            case .failure(let error as NetworkErrors):
                print("error \(error)")
            case .failure(_):
                print("error")
            }
        isLoading = false
    }
    
    func loadMockData() {
         let fakeUsers = [
            User(id: 1, name: "Jonh", lastName1: "String", photo: "https://www.istockphoto.com/es/foto/una-turista-sonriente-con-un-abrigo-amarillo-disfruta-del-clima-en-el-parque-de-oto%C3%B1o-gm1688423980-537272929", active: true, professional: Professional(description: "soy fisioterapeuta desde ....", id: 1, type: ProfessionalType(id: 1, type: "fisioterapeuta"))),
            User(id: 2, name: "Mun", lastName1: "String", photo: "https:\\photo", active: true, professional: Professional(description: "soy fisioterapeuta desde ....", id: 1, type: ProfessionalType(id: 1, type: "fisioterapeuta"))),
         ]
         self.users = fakeUsers
     }
    
//    func filterCoachBy() -> [Professional] {
//        switch coachersType {
//        case .entrenador:
//            return professionals.filter {$0.id == 1}
//        case .nutricionista:
//            return professionals.filter {$0.id == 2}
//        case .dietista:
//            return professionals.filter {$0.id == 3}
//        case .fisioterapeuta:
//            return professionals.filter {$0.id == 4}
//        default:
//            return professionals
//        }
//    }
    
    
//    func filteredItems(_ searchText: String) -> [String] {
//        return ["TODO: pendiente de arreglar modelos"]
//            let items = professionals.compactMap { professional in
//                professional.user?.name
//            }
//            if searchText.isEmpty {
//                return items
//            } else {
//                return items.filter { $0.localizedCaseInsensitiveContains(searchText) }
//            }
//    }
}

