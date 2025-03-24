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
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding()
            
            List {
                Section(header: Text("Información personal")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .textCase(nil)
                    .foregroundColor(.black)
                ) {
                    NavigationLink("Editar datos personales", destination: Text("Editanto datos personales"))
                    NavigationLink("Editar foto", destination: Text("Editando foto"))
                    NavigationLink("Modificar contraseña", destination: Text("Modificando contraseña"))
                    NavigationLink("Métodos de pago", destination: Text("Métodos de pago"))
                }
                .listRowSeparator(.hidden)
                
                Section(header: Text("Preferencias")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .textCase(nil)
                    .foregroundColor(.black)
                ) {
                    //Quien puede ver tu perfil
                    NavigationLink("Quien puede ver tu perfil", destination: Text("Configurando"))
                    
                    Toggle("Notificaciones push", isOn: $notificationsPushOn)
                    
                    // Idioma
                    NavigationLink("Idioma", destination: Text("Elige idioma"))
                }
                .listRowSeparator(.hidden)
                
                Section (header: Text("Ayuda")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .textCase(nil)
                    .foregroundColor(.black)
                ) {
                    NavigationLink("Condiciones generales de uso", destination: Text("Condiciones generales de uso"))
                    NavigationLink("Protección de datos", destination: Text("Protección de datos"))
                    NavigationLink("Califica la app", destination: Text("Enlace para valorar la app"))
                }
                .listRowSeparator(.hidden)
                
                
                Text("Cerrar sesión")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.bantu_orange)
                    .background(
                        NavigationLink("",
                            destination: Text("Proceso Cerrando sesión"))
                        .opacity(0)
                        )
                    .listRowSeparator(.hidden)
                    .padding(.top, 16)
            }
            .scrollContentBackground(.hidden)
            .listStyle(.plain)
            .padding(.top, -24)            
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
