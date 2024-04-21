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
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.black)
                        .padding()
                    
                    Picker("Profesionales", selection: $viewModel.coachersType) {
                        ForEach(NameProfessional.allCases, id: \.self) { professional in
                            Text(professional.rawValue)
                        }
                    }
                    .pickerStyle(.menu)
                    .padding()
                    Image(systemName: "arrow.right.circle.fill")
                        .foregroundColor(.black)
                        .padding()
                }
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal, 16)
                
                List {
                  //  ForEach(viewModel.professionals, id:\.id) {
                  //      coach in
                   ForEach(viewModel.professionals, id: \.id) { coach in
                        SearchCoachCell(nickName: coach.name ?? "" ,
                                        coachDescription: coach.description ?? "",
                                        photo: coach.photo ?? "")
                    }
                }
                Button(action: {
                    Task {
                        await viewModel.getProfessionals()
                        print(viewModel.professionals)
                    }
                }
                       , label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
        }
    }
}
#Preview {
    SearchCoachView()
}
