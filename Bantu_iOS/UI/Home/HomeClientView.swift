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
            VStack(spacing: 18) {
                HeaderView()
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: .infinity, height: 132)
                    .foregroundColor(.bantu_dark_grey)
                    .shadow(radius: 20)
                    .overlay(
                        ZStack {
                            Image("misTablas_Home")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: .infinity, height: 132)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                            VStack {
                                Spacer()
                                
                                Text("Tu texto aquí")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.bantu_orange)
                                    .background(Color.black.opacity(0.5))
                                    .cornerRadius(10)
                            }
                        }
                    )
                    .padding(.horizontal, 18)
                    .offset(x: 5, y: 5)
                    .shadow(radius: 5)
                HStack {
                    VStack(spacing: 20){
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 150, height: 150)
                            .foregroundColor(.bantu_dark_grey)
                            .overlay(
                                ZStack {
                                    Image("Chats1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                    
                                    VStack {
                                        Spacer()
                                        
                                        Text("Tu texto aquí")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.bantu_orange)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(10)
                                    }
                                }
                            )
                            .padding(.horizontal, 16)
                            .offset(x: 5, y: 5)
                            .shadow(radius: 5)
                        
                        RoundedRectangle(cornerRadius: 30)
                            .frame(width: 150, height: 150)
                            .foregroundColor(.bantu_dark_grey)
                            .overlay(
                                ZStack {
                                    Image( "mis_compras")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                    
                                    VStack {
                                        Spacer()
                                        
                                        Text("Tu texto aquí")
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color.bantu_orange)
                                            .background(Color.black.opacity(0.5))
                                            .cornerRadius(10)
                                    }
                                }
                            )
                            .padding()
                            .offset(x: 5, y: 5)
                            .shadow(radius: 5)
                    }
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width:160, height: 350)
                        .foregroundColor(.bantu_dark_grey)
                        .overlay(
                            ZStack {
                                Image("profesionales")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 150, height: 350)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                VStack {
                                    Spacer()
                                    
                                    Text("Tu texto aquí")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.bantu_orange)
                                        .background(Color.black.opacity(0.5))
                                        .cornerRadius(10)
                                }
                            }
                        )
                        .padding()
                        .offset(x: 5, y: 5)
                        .shadow(radius: 5)
                }
            }
        }
    }
}




#Preview {
    HomeClientView()
}
