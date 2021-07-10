//
//  ListaGrupoView.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 07/07/21.
//

import SwiftUI

struct ListaGrupoView: View {
    var comestibles : [Datos.Elementos]
    var grupo: String
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                ForEach(comestibles){ come in
                    NavigationLink(destination: DisenoItemListView(datos: come)){
                        ItemGrupoView(comidas: come, grupo: grupo)
                    }.navigationTitle("Objetos")
                }
            }
        }
    }
}

struct ListaGrupoView_Previews: PreviewProvider {
    static var previews: some View {
        ListaGrupoView(comestibles: alimentos[0].elementos, grupo: "")
        
    }
}
