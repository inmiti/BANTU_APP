//
//  ChatsViewModel.swift
//  Bantu_iOS
//
//  Created by ibautista on 19/6/24.
//

import Foundation

final class ChatsViewModel: ObservableObject {
    @Published var chatsList = [Chat]()
   
    private var useCase: UseCaseProtocol
    
    init(useCase: UseCaseProtocol = UseCaseFake()) {
        self.useCase = useCase
    }
    
    func getChats() async {
        guard let token = KeyChain.shared.getToken() else { return }
//        print(token)
        let task = Task(priority: .background) {
                return try await useCase.getChats(token:token)   
            }
        
        switch await task.result {
            case .success(let response):
            DispatchQueue.main.async {[self] in
                self.chatsList = response
                print("los chats son:  \(self.chatsList)")
            }
            case .failure(let error as NetworkErrors):
                print("error \(error)")
            case .failure(_):
                print("error")
            }
    }
    
    func loadMockData() {
        let fakeChat = [
            Chat(
                id: 1,
                message: "Estoy de acuerdo con que debo practicar más la musculatura superior, pero es lo que más me cuesta.",
                user: User(name: "Isabel", photo: "https://avatars.githubusercontent.com/u/1?v=4"),
                date: "2023-12-05"
            ),
            Chat(
                id: 2,
                message: "Hola Isabel, te recomiendo empezar con ejercicios ligeros y aumentar la intensidad gradualmente.",
                user: User(name: "Carlos", photo: "https://avatars.githubusercontent.com/u/2?v=4"), // Entrenador
                date: "2023-12-06"
            ),
            Chat(
                id: 3,
                message: "¡Gracias, Carlos! ¿Cuántas veces a la semana debería entrenar?",
                user: User(name: "María", photo: "https://avatars.githubusercontent.com/u/1?v=4"),
                date: "2023-12-06"
            ),
            Chat(
                id: 4,
                message: "Tres veces a la semana es un buen comienzo. No olvides estirar antes y después de cada sesión.",
                user: User(name: "Andrés", photo: "https://avatars.githubusercontent.com/u/2?v=4"), // Entrenador
                date: "2023-12-06"
            )
        ]
    }
}
