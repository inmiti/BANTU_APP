//
//  SplashView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 30/3/24.
//

import SwiftUI
import CoreData

enum ViewState {
    case splash
    case login
    case home
}

struct SplashView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @State var viewState: ViewState = .splash
    
    var body: some View {
        NavigationStack {
            switch viewState {
            case .splash:
                splashSection
            case .login:
                LoginView()
            case .home:
                HomeView()
            }
        }
    }
    
    private var splashSection: some View {
        Group {
            Image(.icon38)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            viewState = .login
                        }
                    }
                }
        }
    }
}


#Preview {
    SplashView()
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

