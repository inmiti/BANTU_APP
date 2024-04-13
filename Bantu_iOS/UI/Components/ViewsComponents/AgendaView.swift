//
//  AgendaView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 12/4/24.
//

import SwiftUI

struct AgendaView: View {
    let numberOfItems: Int
       
       var body: some View {
           ScrollView(.horizontal, showsIndicators: false) {
               HStack(spacing: 8) {
                   ForEach(0..<numberOfItems, id: \.self) { _ in
                       ItemAgendaView(date: "Some Date", user: "Some User")
                           .frame(width: 300)
                   }
               }
               .padding()
           }
       }
   }

struct ItemAgendaView: View {
    let date: String
    let user: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.bantu_orange)
                .frame( height: 132)
                
            VStack {
                Text(date)
                Text(user)
            }
            .foregroundColor(.white)
        }
    }
}
#Preview {
    AgendaView(numberOfItems: 5)
}
