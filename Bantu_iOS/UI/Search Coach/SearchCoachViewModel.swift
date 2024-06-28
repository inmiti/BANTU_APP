//
//  SearchCoachViewModel.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 14/4/24.
//

import Foundation

@MainActor
final class SearchCoachViewModel: ObservableObject {
//    let networkResponse = NetworkResponse.shared
   
    @Published var isLoading = false
    @Published var searchText = "" {
        didSet {
            if searchText.isEmpty {
                filterByNameProfessional = users
            } else {
                filterByNameProfessional = users.filter {
                    ($0.name ?? "").lowercased().hasPrefix(searchText.lowercased()) ||
                    ($0.lastName1 ?? "").lowercased().hasPrefix(searchText.lowercased()) ||
                    ($0.professional?.type?.type ?? "").lowercased().elementsEqual(searchText.lowercased())
                }
            }
        }
    }
    
    @Published var users = [User]()
    @Published var filterByNameProfessional: [User] = []
    
    private var useCase: UseCaseProtocol
    
    init(useCase: UseCaseProtocol = UseCaseFake()) {
        self.useCase = useCase
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
            DispatchQueue.main.async { [self] in
                self.users = response
                self.filterByNameProfessional = self.users
    //            print("los prog \(users)")
            }
            
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
        self.filterByNameProfessional = fakeUsers
     }
}

