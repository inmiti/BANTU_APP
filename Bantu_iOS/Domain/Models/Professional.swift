//
//  Coach.swift
//  Bantu_iOS
//
//  Created by Silvia Casanova Martinez on 7/4/24.
//

import Foundation


struct Professional: Codable {
    let description: String?
    var id: Int?
    let type: ProfessionalType?
    let user: User?
    

   
   
}

//extension Professional {
//    static let coachTest = Professional( description: User(nickName: "", avatar: "", nif: "", telephone: 1), id:ProfessionalType(id: 1, type: "") , type: "Descr test")
//}

