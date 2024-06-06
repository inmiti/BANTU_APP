//
//  View+Extension.swift
//  Bantu_iOS
//
//  Created by ibautista on 6/6/24.
//

import Foundation
//import UIKit
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners))
    }
}
