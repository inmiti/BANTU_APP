//
//  SocialCell.swift
//  Bantu_iOS
//
//  Created by ibautista on 9/6/24.
//

import SwiftUI

struct SocialCell: View {
    @State var name: String
    @State var photo: String
    @State var content: String
    @State var resource: String
    var body: some View {
                    VStack {
                        HStack {
                            // Professional photo
                            AsyncImage(url: URL(string: photo)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                            } placeholder: {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(.gray)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                            }
                            
                            // Professional name
                            Text(name)
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                                .foregroundColor(.bantu_text)
                            Spacer()
                        }
                        .padding()
                        
                        //Resource
                        //TODO: Si es jpg, mp3 o mp4 dependiendo del tipo de archivo código para descargar y presentación. Por ahora solo para image
                       
                        AsyncImage(url: URL(string: resource)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxHeight: 200)
                        } placeholder: {
                            Image(systemName: "photo.on.rectangle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.gray)
                                .frame(maxHeight: 200)
                        }
                        .padding(.horizontal)
                        
                        // Publication content
                        Text(content)
                            .font(.system(size: 18))
                            .padding()
                            .foregroundColor(.bantu_text)
                    }
                    // Cell background
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.bantu_cell)
                            .frame(maxWidth: .infinity)
                    )
    }
}

struct SocialCell_Previews: PreviewProvider {
    static var previews: some View {
        SocialCell(name: "eva",
                   photo:"https://.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300",
                   content: "Aquí os dejo un listado de ejercicios para poner a punto tu abdomen. Espero que os guste, sígueme para ver mas publicaciones como ésta.",
                   resource: "https://.alfabetajuega.com/alfabetajuega/2020/12/goku1.jpg?width=300")
        .previewLayout(.sizeThatFits)
    }
}
