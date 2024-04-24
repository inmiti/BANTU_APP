//
//  HomeCoachView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 12/4/24.
//

import SwiftUI

struct HomeCoachView: View {
    let dateSchedulle: Int
    var body: some View {
    ScrollView {
        VStack {
            HeaderView()
            
            VStack(spacing: 16) {
            ImageHomeComponent(image: "tablas",
                               text: "Tu texto aquí",
                               height: 132)
                HStack {
                    VStack(spacing: 20){
                        ImageHomeComponent(image: "Chats1",
                                           text: "Tu texto aquí",
                                           height: 150)
                        ImageHomeComponent(image: "Group compras",
                                           text: "Tu texto aquí",
                                           height: 150)
                        
                    }
                    ImageHomeComponent(image: "Group clientes",
                                       text: "Tu texto aquí",
                                       height: 350)
                }
            }
            .padding(.horizontal)
        }
    }
       AgendaView(numberOfItems: dateSchedulle)
}
}

//#Preview {
//    HomeCoachView(dateSchedulle: 3)
//}

struct HomeCoachView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCoachView(dateSchedulle: 3)
    }
}
