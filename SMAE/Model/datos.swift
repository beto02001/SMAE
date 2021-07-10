//
//  datos.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 02/07/21.
//

import Foundation
import SwiftUI

struct Datos: Codable, Identifiable{
    let id: Int
    let grupo: String
    let nombre: String
    let elementos: [Elementos]
    
    struct Elementos: Codable, Identifiable{
        var id: Int
        let nombreElelemto: String
        let cantidad: String
        let peso: String
        let kcal: Int
        let proteinas: Float
        let lipidos: Float
        let carbohidratos: Float
        let micronutrimento: String
    }
}
