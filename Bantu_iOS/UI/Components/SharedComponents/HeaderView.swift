//
//  HeaderView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 6/4/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
    ZStack {
               Rectangle()
                   .fill(Color.bantu_orange)
                   .frame(height: 100)
                   .shadow(radius: 3)
               
        HStack(spacing: 23) {
                   Image(systemName: "person.circle")
                       .resizable()
                       .frame(width: 50, height: 50)
                   Text("Hola2 alguien")
                       .font(.title)
                       .fontWeight(.regular)
                       .foregroundColor(Color.black)
            Spacer()
               }
               .padding(.horizontal)
           }
       }
   }


//#Preview {
//        HeaderView()
//}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
