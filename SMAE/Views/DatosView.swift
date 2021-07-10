//
//  fondo.swift
//  SMAE
//
//  Created by Luis Humberto Martinez Echegaray on 07/07/21.
//

import SwiftUI
struct DatosView: View {
    var datos: Datos.Elementos
    var body: some View {
        VStack {
            HStack{
                VStack{
                    VStack(spacing: 0){
                        Text("Cantidad sugerida")
                            .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "azulClaro", radio: 20))
                        Text(datos.cantidad)
                            .modifier(disenoDatos(colorletra: "blanco", colorFondo: "azulIntermedio", radio: 10))
                    }.padding(.bottom)
                    VStack(spacing: 0){
                        Text("Energia")
                            .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))

                        Text("\(datos.kcal) kcal")
                            .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
                    }.padding(.bottom)
                    VStack(spacing: 0){
                        Text("Lipidos")
                            .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))
                        
                        Text("\(datos.lipidos) g")
                            .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
                    }
                }
                Spacer()
                VStack{
                    VStack(spacing: 0){
                        Text("Peso")
                            .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "azulClaro", radio: 20))
                        Text(datos.peso + "\n")
                            .padding(.top)
                            .modifier(disenoDatos(colorletra: "blanco", colorFondo: "azulIntermedio", radio: 10))
                    }.padding(.bottom)
                    VStack(spacing: 0){
                        Text("Proteína")
                            .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))

                        Text("\(datos.proteinas) g")
                            .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
                    }.padding(.bottom)
                    VStack(spacing: 0){
                        Text("Hidratos de carbono")
                            .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "amarillo", radio: 20))
                        
                        Text("\(datos.carbohidratos) g")
                            .modifier(disenoDatos(colorletra: "blanco", colorFondo: "amarilloOscuro", radio: 10))
                    }
                }
            }.padding(40)
            VStack(spacing: 0){
             Text("Micronutrimento")
                 .modifier(disenoDatos(colorletra: "azulOscuro", colorFondo: "blanco", radio: 20))
                Text(datos.micronutrimento)
                 .modifier(disenoDatos(colorletra: "blanco", colorFondo: "gris", radio: 10))
            }
        }
    }
}

struct fondo_Previews: PreviewProvider {
    static var previews: some View {
        DatosView(datos: alimentos[0].elementos[0])
    }
}
