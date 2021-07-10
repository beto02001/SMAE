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
                    DatosView()
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

/*
 Spacer()
 VStack(spacing: 0){
     Text("Cantidad sugerida")
         .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "azulClaro", radio: 20))
         
     Text("\(datos.kcal) pieza")
         .modifier(disenoDatos(colorletra: "blanco", colorFondo: "azulIntermedio", radio: 10))
 }
 Spacer()
 VStack(spacing: 0){
     Text("Peso")
         .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "azulClaro", radio: 20))
     
     Text("\(datos.kcal)")
         .modifier(disenoDatos(colorletra: "blanco", colorFondo: "azulIntermedio", radio: 10))
 }
 Spacer()
}.padding()
HStack{
 VStack(spacing: 0){
     Text("Energia")
         .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))

     Text("\(datos.kcal) kcal")
         .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
 }
 Spacer()
 VStack(spacing: 0){
     Text("Proteína")
         .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))
     
     Text("\(datos.proteinas) g")
         .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
 }
}.padding()
HStack{
 VStack(spacing: 0){
     Text("Lipidos")
         .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))
     
     Text("\(datos.kcal) g")
         .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
 }
 Spacer()
 VStack(spacing: 0){
     Text("Hidratos de carbono")
         .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))
     
     Text("\(datos.kcal) g")
         .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
 }
}.padding()
VStack(spacing: 0){
 Text("Micronutrimento")
     .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "blanco", radio: 20))
 Text("\(datos.carbohidratos) mg")
     .modifier(disenoDatos(colorletra: "blanco", colorFondo: "gris", radio: 10))
}
 */
