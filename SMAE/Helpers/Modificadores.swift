//
//  Modificadores.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 09/07/21.
//

import Foundation
import SwiftUI

struct disenoDatos: ViewModifier{
    var colorletra: String
    var colorFondo: String
    var radio: CGFloat
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(colorletra))
            .padding()
            .background(Color(colorFondo))
            .cornerRadius(radio)
    }
}
