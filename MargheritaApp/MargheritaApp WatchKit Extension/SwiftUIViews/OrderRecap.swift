//
//  OrderRecap.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI


let test = Order(nombreDePizza: 1, adress: "44 corso umberto", phoneNumber: "00397777")

struct OrderRecap: View {
    
    @State var order: Order
    var body: some View {
        VStack{
            if order.nombreDePizza <= 0 {
                Text("\(order.nombreDePizza) Margherita")
                               .font(.headline)
                               .italic()
                       } else {
                           Text("\(order.nombreDePizza) Margheritas")
                               .font(.headline)
                               .italic()
                       }
            Text("\(order.nombreDePizza * 4) €")
                .bold()
                .padding()
                .foregroundColor(.green)
//            Text(order.adress)
            Text("70, Corso Nicolangelo Protopisani") 
                .foregroundColor(.blue)
                .underline()
                .font(.footnote)
                .padding()
            Text(order.phoneNumber)
                .font(.footnote)
                .padding()
                
               NavigationLink(destination: TimeCount()){
                        Text("Order")
                            .foregroundColor(.white)
                }
                    .frame(width: 115, height: 15)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                    .offset(y: -5)
        }.navigationBarTitle("Your order")
     
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
    }
}
