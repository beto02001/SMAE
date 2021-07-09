//
//  TarjetaListView.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 01/07/21.
//

import SwiftUI

struct TarjetaListView: View {
    var grupos : Datos
    var body: some View {
        HStack{
            ZStack{
                Image(grupos.grupo)
                    .renderingMode(.original)
                    .blur(radius: 0.7)
                Text(grupos.nombre)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)                    
            }
        }
    }
}

struct TarjetaListView_Previews: PreviewProvider {
    static var previews: some View {
        TarjetaListView(grupos: alimentos[0])
    }
}
