//
//  SocialViewModel.swift
//  Bantu_iOS
//
//  Created by ibautista on 9/6/24.
//

import Foundation

final class SocialViewModel: ObservableObject {
    
    @Published var publications: [Social]
    private var useCase: UseCaseProtocol
    
    init(useCase: UseCaseProtocol = UseCaseFake()) {
        self.useCase = useCase
    }
    
    func getSocialPublications() async  {
//        isLoading = true
        
        guard let token = KeyChain.shared.getToken() else { return }
//        print(token)
        let task = Task(priority: .background) {
                return try await useCase.getSocialPublications(token:token)
            }
        switch await task.result {
            case .success(let response):
            publications = response
            print("las publicaciones son:  \(publications)")
            case .failure(let error as NetworkErrors):
                print("error \(error)")
            case .failure(_):
                print("error")
            }
//        isLoading = false
    }
    
    func loadMockData() {
         let fakeSocial = [
            User(id: 1, name: "Jonh", lastName1: "String", photo: "https://www.istockphoto.com/es/foto/una-turista-sonriente-con-un-abrigo-amarillo-disfruta-del-clima-en-el-parque-de-oto%C3%B1o-gm1688423980-537272929", active: true, professional: Professional(description: "soy fisioterapeuta desde ....", id: 1, type: ProfessionalType(id: 1, type: "fisioterapeuta"))),
            User(id: 2, name: "Mun", lastName1: "String", photo: "https:\\photo", active: true, professional: Professional(description: "soy fisioterapeuta desde ....", id: 1, type: ProfessionalType(id: 1, type: "fisioterapeuta"))),
         ]
         self.users = fakeUsers
     }
    
}
