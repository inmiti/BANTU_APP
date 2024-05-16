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
        VStack {
            HeaderView(headerText: "Profesionales", nameButtonHeader: "Date de alta")
                .ignoresSafeArea()
            VStack {
                TextField("Encuentra tu profesional", text: $viewModel.searchText)
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
                    .padding(.horizontal)
                //                if !searchText.isEmpty {
                //                    List {
                //                        ForEach(viewModel.filteredItems(searchText), id: \.self) { item in
                //                            Text(item)
                //                        }
                //                    }
                //                    .listStyle(PlainListStyle())
                //                }
                List {
//                    ForEach(viewModel.professionals, id: \.id) { coach in
//                        SearchCoachCell(name: coach.user?.name ?? "" ,
//                                        firstName: coach.user?.lastName1 ?? "",
//                                        coachDescription: coach.description ?? "",
//                                        photo: coach.user?.photo?.securePath ?? "")
//                    }
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
        SearchCoachView()
    }
}
