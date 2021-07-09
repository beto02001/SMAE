//
//  ItemGrupoView.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 07/07/21.
//

import SwiftUI

struct ItemGrupoView: View {
    var comidas: Datos.Elementos
    var body: some View {
        VStack{
            Image(comidas.nombreElelemto)
                .resizable()
                .frame(height: 280)
            HStack(alignment: .center){
                Image("cereales")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40, alignment: .leading)
                    .overlay(Circle().stroke(Color .white, lineWidth: 2))
                    
                VStack(alignment: .leading){
                    Text(comidas.nombreElelemto)
                        .foregroundColor(.white)
                        .bold()
                        .font(.title2)
                    Text("2 porciones")
                        .foregroundColor(Color("azulClaro"))
                }.padding()
                Spacer()
            }.padding()
        }.background(Color("azulOscuro"))
        
    }
}

struct ItemGrupoView_Previews: PreviewProvider {
    static var previews: some View {
        ItemGrupoView(comidas: alimentos[0].elementos[0])
    }
}
