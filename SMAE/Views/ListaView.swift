//
//  ListaView.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 01/07/21.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationView{
            List(alimentos){ alimento in
                NavigationLink(destination: ListaGrupoView(comestibles: alimento.elementos, grupo: alimento.grupo)){
                    TarjetaListView(grupos: alimento)
                }
            }.navigationTitle("Conjuntos")
        }.foregroundColor(.gray)
    }
}

struct ListaView_Previews: PreviewProvider {
    static var previews: some View {
        ListaView()
    }
}
