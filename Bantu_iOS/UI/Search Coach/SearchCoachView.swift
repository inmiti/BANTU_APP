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
        HeaderView()
        HStack {
            Image(systemName: "magnifyingglass")
                           .foregroundColor(.black)
                           .padding()
            
            Picker("Profesionales", selection: $viewModel.coachersType) {
                ForEach(TypeId.allCases, id: \.self) { professional in
                    Text(professional.rawValue)
                        
                }
            }
            .pickerStyle(.menu)
            .padding()
            Image(systemName: "arrow.right.circle.fill")
                          .foregroundColor(.black)
                          .padding()
        }
        .background(.bantuLightGrey)
              .cornerRadius(10)
              .padding(.horizontal, 16)
        
        List {
            ForEach(viewModel.filteredCoachers, id: \.id) { coach in
                Text(coach.description ?? "")
            }
        }
    }
    
}


#Preview {
    SearchCoachView()
}
