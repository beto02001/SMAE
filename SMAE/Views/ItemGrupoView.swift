//
//  ItemGrupoView.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 07/07/21.
//

import SwiftUI

struct ItemGrupoView: View {
    var comidas: Datos.Elementos
    var grupo: String
    var body: some View {
        VStack{
            Image(comidas.nombreElelemto)
                .resizable()
                .frame(height: 270)
            HStack(alignment: .center){
                Image(grupo)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40, alignment: .center)
                    .overlay(Circle().stroke(Color .white, lineWidth: 1))
                    
                VStack(alignment: .leading){
                    Text(comidas.nombreElelemto)
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                    Text(comidas.cantidad)
                        .foregroundColor(Color("azulClaro"))
                }
                Spacer()
            }.padding(.bottom, 25)
            .padding(.leading)
        }.background(Color("azulOscuro"))
        
    }
}

struct ItemGrupoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemGrupoView(comidas: alimentos[0].elementos[0], grupo: "")
    }
}
