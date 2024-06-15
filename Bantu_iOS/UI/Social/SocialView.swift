//
//  SocialView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import SwiftUI

struct SocialView: View {
    @StateObject var viewModel = SocialViewModel()
    
    var body: some View {
        ZStack {
            // Background
            Image(decorative:"")
                .resizable()
                .background(Color.bantu_background)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Header
                HeaderView(headerText: "Bantu Social", nameButtonHeader: "Publica contenido")
                
                // Celda personalizada
                List {
                    ForEach(viewModel.publications, id: \.id ) { publication in
                        SocialCell(name: publication.professional.name ?? "",
                                   photo: publication.professional.photo ?? "",
                                   content: publication.description ?? "",
                                   resource: publication.resource)
                        .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        .listRowBackground(Color.bantu_background)
                    }
                }
                .scrollContentBackground(.hidden)
                .padding(.top, 0)
                .background(Color.bantu_background)
            }
            .ignoresSafeArea(.all)
            .padding(.bottom, 20)
            .onAppear{
                Task {
                    await viewModel.getSocialPublications()
                }
        }
            
        }
    }
}

//#Preview {
//    SocialView()
//}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = SocialViewModel(useCase: UseCaseFake())
        vm.loadMockData()
        return SocialView(viewModel: vm)
    }
}
