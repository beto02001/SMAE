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
            VStack{
                ZStack{
                    Image(datos.nombreElelemto)
                        .resizable()
                        .frame(height: 272, alignment: .top)
                    Text(datos.nombreElelemto)
                        
                        .padding(.horizontal, 60)
                        .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .background(Color .white)
                        .foregroundColor(.red)
                        .offset(x:-100 ,y: 120)
                        
                }
                HStack{
                    VStack(spacing: 0){
                        Text("Cantidad sigerida")
                            .foregroundColor(Color("azulOscuro"))
                            .padding()
                            .background(Color("azulClaro"))
                            .cornerRadius(20)
                        Text("\(datos.kcal) pieza")
                            .padding()
                            .background(Color("azulIntermedio"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack(spacing: 0){
                        Text("Cantidad sigerida")
                            .foregroundColor(Color("azulOscuro"))
                            .padding()
                            .background(Color("azulClaro"))
                            .cornerRadius(20)
                        Text("\(datos.kcal)")
                            .padding()
                            .background(Color("azulIntermedio"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }.padding()
                HStack{
                    VStack(spacing: 0){
                        Text("Energia")
                            .foregroundColor(Color("azulOscuro"))
                            .padding()
                            .background(Color("amarillo"))
                            .cornerRadius(20)
                        Text("\(datos.kcal) kcal")
                            .padding()
                            .background(Color("amarilloOscuro"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack(spacing: 0){
                        Text("Proteína")
                            .foregroundColor(Color("azulOscuro"))
                            .padding()
                            .background(Color("amarillo"))
                            .cornerRadius(20)
                        Text("\(datos.proteinas) g")
                            .padding()
                            .background(Color("amarilloOscuro"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }.padding()
                HStack{
                    VStack(spacing: 0){
                        Text("Lipidos")
                            .foregroundColor(Color("azulOscuro"))
                            .padding()
                            .background(Color("amarillo"))
                            .cornerRadius(20)
                        Text("\(datos.kcal) g")
                            .padding()
                            .background(Color("amarilloOscuro"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack(spacing: 0){
                        Text("Hidratos de carbono")
                            .foregroundColor(Color("azulOscuro"))
                            .padding()
                            .background(Color("amarillo"))
                            .cornerRadius(20)
                        Text("\(datos.kcal) g")
                            .padding()
                            .background(Color("amarilloOscuro"))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                }.padding()
                VStack(spacing: 0){
                    Text("Hidratos de carbono")
                        .foregroundColor(Color("azulOscuro"))
                        .padding()
                        .background(Color .white)
                        .cornerRadius(20)
                    Text("\(datos.carbohidratos) mg")
                        .padding()
                        .background(Color .gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
            }
        }.ignoresSafeArea()
        .background(Color("azulOscuro"))
    }
}

struct DisenoItemListView_Previews: PreviewProvider {
    static var previews: some View {
        DisenoItemListView(datos: alimentos[0].elementos[0])
    }
}
