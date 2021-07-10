//
//  DisenoItemListView.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 07/07/21.
//

import SwiftUI

struct DisenoItemListView: View {
    var datos: Datos.Elementos
    var body: some View {
        ScrollView{
                ZStack{
                    Image(datos.nombreElelemto)
                        .resizable()
                        .frame(height: 272, alignment: .top)
                    Text(datos.nombreElelemto)
                        .padding(.horizontal, 60)
                        .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .background(Color .white)
                        .foregroundColor(.red)
                        .offset(x:-85 ,y: 125)
                        
                }.ignoresSafeArea()
                HStack{
                    DatosView(datos: datos)
                }
        }.navigationTitle(datos.nombreElelemto)
        .background(Color("azulOscuro"))
    }
}

struct DisenoItemListView_Previews: PreviewProvider {
    static var previews: some View {
        DisenoItemListView(datos: alimentos[0].elementos[0])
    }
}
