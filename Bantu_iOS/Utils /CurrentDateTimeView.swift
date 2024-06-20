//
//  CurrentDateTimeView.swift
//  Bantu_iOS
//
//  Created by ibautista on 20/6/24.
//

import SwiftUI

struct CurrentDateTimeView: View {
    
    private var currentDateTime: String {
        let now = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        formatter.locale = Locale(identifier: "es_Es")
        return formatter.string(from: now)
    }
   
    
    var body: some View {
        Text(currentDateTime)
    }
}

struct CurrentDateTimeView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentDateTimeView()
    }
}
