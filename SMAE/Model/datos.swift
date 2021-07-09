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
        let kcal: Float
        let proteinas: Float
        let carbohidratos: Float
    }
}

struct Comidas: Codable{
    let nombreElemento: String
    let kcal: Float
    let proteinas: Float
    let carbohidratos: Float
}


