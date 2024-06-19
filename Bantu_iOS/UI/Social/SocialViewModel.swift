//
//  SocialViewModel.swift
//  Bantu_iOS
//
//  Created by ibautista on 9/6/24.
//

import Foundation

final class SocialViewModel: ObservableObject {
    
    @Published var publications = [Social]()
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
            DispatchQueue.main.async {[self] in
                self.publications = response
                print("las publicaciones son:  \(self.publications)")
            }
            case .failure(let error as NetworkErrors):
                print("error \(error)")
            case .failure(_):
                print("error")
            }
//        isLoading = false
    }
    
    func loadMockData() {
         let fakeSocial = [
                Social(
                    id: 1,
                    professional:User(
                    name: "eva",
                    photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                    password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y"),
                       resource: "https://",
                       description: "Descripcion publicacion en la parte social"),
                Social(id: 2,
                       professional:User(
                    name: "david",
                    photo: "https://"),
                       resource: "https://",
                       description: "Publicacion de David en la parte social"),
                Social(id: 3,
                       professional:User(
                    name: "pilar",
                    photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                    password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y"),
                       resource: "https://",
                       description: "Descripcion publicacion en la parte social"),
                Social(
                    id: 4,
                    professional:User(
                    name: "nico",
                    photo: "https://"),
                       resource: "https://",
                       description: "Descripcion publicacion en la parte social"),
                Social(
                    id: 5,
                    professional:User(
                    name: "pedro",
                    photo: "https://"),
                       resource: "https://",
                       description: "Publicacion de David en la parte social"),
                Social(id: 6,
                       professional:User(
                    name: "lunaa",
                    photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                    password: "$2b$12$xFyrpIOgKuu1awuFNPNn8OQRkKXS9uh7au0A.3S/BUz3SwURnjR3y"),
                       resource: "https://",
                       description: "Descripcion publicacion en la parte social")
         ]
         self.publications = fakeSocial
     }
}
