//
//  SettingsView.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import SwiftUI

struct SettingsView: View {
    @State var notificationsPushOn: Bool = true
    
    var body: some View {
        NavigationStack {
            
            Text("Settings")
                .font(.title)
                .foregroundColor(.bantu_orange)
            
            List {
                Section("Información personal") {
                    NavigationLink("Editar datos personales", destination: Text("Editanto datos personales"))
                    NavigationLink("Editar foto", destination: Text("Editando foto"))
                    NavigationLink("Modificar contraseña", destination: Text("Modificando contraseña"))
                }

            }
            Form{
                Section("Preferencias") {
                    //Quien puede ver tu perfil
                    NavigationLink("Quien puede ver tu perfil", destination: Text("Configurando"))
                    
                    Toggle("Notificaciones push", isOn: $notificationsPushOn)
                    
                    // Idioma
                    NavigationLink("Idioma", destination: Text("Elige idioma"))
                    
                }
            }
            List {
                Section {
                    NavigationLink("Informar de un problema", destination: Text("Informando"))
                    NavigationLink("Condiciones generales de uso", destination: Text("Condiciones generales de uso"))
                    NavigationLink("Protección de datos", destination: Text("Protección de datos"))
                    NavigationLink("Califica la app", destination: Text("Enlace para valorar la app"))
                } header: {
                    Text("Ayuda")
                } footer: {
                    HStack{
                        Spacer()
                        Label("version 1.0", systemImage: "iphone")
                        Spacer()
                    }
                }
            }
            
        
            
        }
    }
}

//#Preview {
//    SettingsView()
//}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
