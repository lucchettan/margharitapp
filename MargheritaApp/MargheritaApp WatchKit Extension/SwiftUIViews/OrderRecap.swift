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
            if order.nombreDePizza < 2 {
                Text("\(order.nombreDePizza) Margherita")
                    .font(.system(size: 19))
                    .italic()
                    .bold()
            } else {
                Text("\(order.nombreDePizza) Margherite")
                    .font(.system(size: 19))
                    .italic()
                    .bold()
            }
            Text("\(order.nombreDePizza * 4) €")
                .font(.system(size: 19))
                .italic()
                .bold()
                .foregroundColor(.green)
            
            Text("(Cash on delivery)")
                .font(.system(size: 12))
                .foregroundColor(.gray)

            Text("70, Corso Nicolangelo Protopisani")
//                .foregroundColor(.blue)
                .underline()
                .font(.footnote)
                .padding()
            Text(order.phoneNumber)
                .font(.footnote)
                
            NavigationLink(destination: ValidatedView()){
                Text("Validate")
                    .foregroundColor(.white)
            }
                .frame(width: 115, height: 15)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
        }
            .navigationBarTitle("Your order")
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
    }
}
