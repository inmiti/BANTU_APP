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
            Image(decorative:"")
                .resizable()
                .background(Color.bantu_background)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HeaderView(headerText: "Profesionales", nameButtonHeader: "Date de alta")
                
                //TODO: hacer el componente
                TextField("Encuentra tu profesional", text: $viewModel.searchText)
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)

                ScrollView {
                    LazyVStack(spacing: 24) {
                        ForEach(viewModel.users, id: \.id) { user in
                            SearchCoachCell(name: user.name ?? "" ,
                                            firstName: user.lastName1 ?? "",
                                            coachDescription: user.professional?.description ?? "",
                                            photo: user.photo?.securePath ?? ""
                            )
                            .background(Color.bantu_background)
                            .cornerRadius(16)
                            .shadow(color: .gray.opacity(0.4), radius: 3, x: 0, y: 4)
                           
                        }
                    }
                    .padding(.bottom, 50)
                }
                .background(Color.bantu_background)
                .padding()
                    
//                List {
//                            ForEach(viewModel.users, id: \.id) { user in
//                                SearchCoachCell(name: user.name ?? "" ,
//                                                firstName: user.lastName1 ?? "",
//                                                coachDescription: user.professional?.description ?? "",
//                                                photo: user.photo?.securePath ?? ""
//                                )
//                                .listRowInsets(EdgeInsets())
//                                .background(Color.bantu_background)
//                                .cornerRadius(10)
////                                .padding(.vertical, 8)
//                                .padding()
//                            }
//                        }
//                        .listStyle(PlainListStyle())
//                        .background(Color.bantu_background)
                
                
                //                if !searchText.isEmpty {
                //                    List {
                //                        ForEach(viewModel.filteredItems(searchText), id: \.self) { item in
                //                            Text(item)
                //                        }
                //                    }
                //
                //                }

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
