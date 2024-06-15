//
//  TabView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 6/4/24.
//

import SwiftUI

struct TabBarView: View {
    @State var stateView: StatusModels = .home
    
    var body: some View {

            TabView {
                SearchCoachView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SocialView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Social")
                    }
                ChatsView()
                //                    .badge(count: Int) para indicar nº mensajes sin leer
                    .tabItem {
                        Image(systemName: "ellipsis.message")
                        Text("Chats")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gearshape")
                        Text("Settings")
                    }
            }
            .background(Color.bantu_background)
            .accentColor(.bantu_orange)
    }
}

//#Preview {
//    TabBarView()
//}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
