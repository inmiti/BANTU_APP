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
            HeaderView()
            VStack {
                TextField("Buscar", text: $viewModel.searchText)
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
                    ForEach(viewModel.professionals, id: \.id) { coach in
                        SearchCoachCell(nickName: coach.user?.name ?? "" ,
                                        coachDescription: coach.description ?? "",
                                        photo: coach.user?.photo?.securePath ?? "")
                    }
                } .padding(12)
                
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
