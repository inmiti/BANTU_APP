//
//  SearchCoachView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import SwiftUI

struct SearchCoachView: View {
    @State private var selectedProfessional: String?
    @StateObject var viewModel = SearchCoachViewModel()
    
    var body: some View {
        ZStack {
            //Background
            Image(decorative:"")
                .resizable()
                .background(Color.bantu_background)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Header
                HeaderView(headerText: "Profesionales", nameButtonHeader: "Date de alta")
        
                ScrollView (showsIndicators: false){
                    // Search
                    SearchTextField(textComponent: $viewModel.searchText)
                        .padding(.top)
                        .padding(.horizontal)
                    
                    // Professional list
                    NavigationStack {
                        LazyVStack(spacing: 24) {
                            ForEach(viewModel.filterByNameProfessional, id: \.id) { user in
                                NavigationLink(destination: {
                                    //Destino
                                    DetailProfessionalView(professional: user)
                                }, label: {
                                    //Celda personalizada
                                    SearchCoachCell(name: user.name ?? "" ,
                                                    firstName: user.lastName1 ?? "",
                                                    coachDescription: user.professional?.description ?? "",
                                                    photo: user.photo?.securePath ?? ""
                                    )
                                    .background(Color.bantu_background)
                                    .cornerRadius(16)
                                .shadow(color: .gray.opacity(0.4), radius: 3, x: 0, y: 4)
                                })
                            }
                        }
                        .padding()
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom, 20)
                .background(Color.bantu_background)
                
                
            }
            .background(Color.bantu_background)
            .ignoresSafeArea(edges: .top)
            .onAppear{
                Task {
                    await viewModel.getProfessionals()
                }
            }
        }
    }
}
//#Preview {
//    SearchCoachView()
//}

struct SearchCoachView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = SearchCoachViewModel(useCase: UseCaseFake())
        vm.loadMockData()
        return SearchCoachView(viewModel: vm)
    }
}
