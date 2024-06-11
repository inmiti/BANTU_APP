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
            //Background
            Image(decorative:"")
                .resizable()
                .background(Color.bantu_background)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HeaderView(headerText: "Bantu Social", nameButtonHeader: "Publica contenido")
                
                Spacer()
              
                List {
                    
                }
            }
            .ignoresSafeArea(edges: .top)
        }
    }
}

//#Preview {
//    SocialView()
//}

struct SocialView_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
