//
//  Alimentos.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 06/07/21.
//

import Foundation

var alimentos: [Datos] = load("SMAE.json")

func load<T: Decodable>(_ filename: String) -> T {
    let dato: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        dato = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: dato)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
