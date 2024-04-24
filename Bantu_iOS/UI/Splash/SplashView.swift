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
    case register
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
                LoginView(state: $viewState)
            case .home:
               TabBarView()
            case .register:
                RegistrationView(state: $viewState)
            }
        }
    }
    
    private var splashSection: some View {
        Group {
            Image(String("Icon2"))
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


//#Preview {
//    SplashView()
//        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
//}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}


