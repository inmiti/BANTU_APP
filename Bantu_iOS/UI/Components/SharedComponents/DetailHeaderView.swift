//
//  DetailHeaderView.swift
//  Bantu_iOS
//
//  Created by ibautista on 4/6/24.
//

import SwiftUI

struct DetailHeaderView: View {
    @State var photo: String?
    @State var name: String?
    @State var firstName: String?
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 400)
                .foregroundColor(.white)
                .ignoresSafeArea(edges: .top)
            
            Rectangle()
                .fill(LinearGradient(
                    colors: [Color.bantu_orange, Color.bantu_pink],
                    startPoint: .bottom,
                    endPoint: .top)
                )
//                .opacity(0.90)
                .ignoresSafeArea()
                .frame(height: 400)
                .cornerRadius(30, corners: [.bottomLeft, .bottomRight])
            
            VStack{
               Spacer()
               
                AsyncImage(url: URL(string: photo ?? "person.circle")) { image in
                    image
                        .resizable()
                        .frame(width: 180, height: 180)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .shadow(color: .black.opacity(0.5), radius: 4, x: 0, y: 4)
                }

            placeholder: {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .clipShape(Circle())
                        .foregroundColor(.gray)
                }
                
                if let name = name, let firstname = firstName {
                    Text("\(name) \(firstname)")
                        .padding(.top, 48)
                        .padding(.bottom, 24)
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
            .frame(height: 400)
        }
    }
}

struct DetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeaderView(photo: "https://cdn.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                         name: "Elizab",
                         firstName: "Gaitán")
        .previewLayout(.sizeThatFits)
    }
}
