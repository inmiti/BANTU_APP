//
//  TabView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 6/4/24.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        ZStack {
            Color.bantu_orange
                .ignoresSafeArea()
            TabView {
                HomeClientView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                SearchCoachView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("search")
                    }
                SocialView()
                    .tabItem {
                        Image(systemName: "person.line.dotted.person")
                        Text("Social")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            .accentColor(.bantu_orange)
            .padding(.top)
        }
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
