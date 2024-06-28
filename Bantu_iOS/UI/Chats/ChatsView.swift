//
//  ChatsView.swift
//  Bantu_iOS
//
//  Created by ibautista on 14/5/24.
//

import SwiftUI

struct ChatsView: View {
    @StateObject var viewModel = ChatsViewModel()

    var body: some View {
        ZStack {
            // Background
            Image(decorative:"")
                .resizable()
                .background(Color.bantu_background)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Header
                HeaderView(headerText: "Bantu Chat", nameButtonHeader: "", systemNameImage: "magnifyingglass")
                
                // Celda personalizada
                List {
                    ForEach(viewModel.chatsList, id: \.id ) { chat in
                        ChatCell(name: chat.user.name ?? "",
                                 photo: chat.user.photo ?? "",
                                 message: chat.message,
                                 recivedAt: chat.date
                        )
                        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        .listRowBackground(Color.bantu_background)
                        .listRowSeparator(.hidden)
                    }
                }
                .scrollContentBackground(.hidden)
                .background(Color.bantu_background)
                .listStyle(.inset)
                .padding(.horizontal)
                
            }
            .ignoresSafeArea(.all)
            .padding(.bottom, 20)
            .onAppear{
                Task {
                    await viewModel.getChats()
                }
            }
            
        }
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ChatsViewModel(useCase: UseCaseFake())
        vm.loadMockData()
        return ChatsView(viewModel: vm)
    }
}
