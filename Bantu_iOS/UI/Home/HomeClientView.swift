//
//  HomeClientView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 6/4/24.
//

import SwiftUI

struct HomeClientView: View {
    var body: some View {
        ScrollView {
            VStack {
                HeaderView(headerText: "Profesionales", nameButtonHeader: "Date de alta")
        
                
                VStack(spacing: 16) {
                ImageHomeComponent(image: "misTablas_Home", 
                                   text: "Mis entrenamientos",
                                   height: 132)
                    HStack {
                        VStack(spacing: 20){
                            ImageHomeComponent(image: "Chats1",
                                               text: "Chats",
                                               height: 150)
                            ImageHomeComponent(image: "mis_compras",
                                               text: "Mis compras",
                                               height: 150)
                            
                        }
                        
                        ImageHomeComponent(image: "profesionales",
                                           text: "Mis profesionales",
                                           height: 350)
                    }
                }
                .padding(.horizontal)
                AgendaView(numberOfItems: 3)
            }
        }
    }
}

//#Preview {
//    HomeClientView()
//}

struct HomeClientView_Previews: PreviewProvider {
    static var previews: some View {
        HomeClientView()
    }
}
