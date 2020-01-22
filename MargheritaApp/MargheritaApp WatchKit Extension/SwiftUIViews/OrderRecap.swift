//
//  OrderRecap.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI


let test = Order(nombreDePizza: 1, adress: "", phoneNumber: "0039")

struct OrderRecap: View {
    
    @State var order: Order
    
    var body: some View {
      
        VStack(alignment: .leading){
            Spacer()
            
            Text("Your order: \(order.nombreDePizza)")
                .font(.footnote)
                .padding()
            Text("Price: \(order.nombreDePizza * 4) €")
                .font(.footnote)
                .padding()
            Text("Your adress: \(order.adress)")
                .font(.footnote)
                .padding()
            Text("Phone number: \(order.phoneNumber)")
                .font(.footnote)
                .padding()
                
            NavigationLink(destination: TimeCount()) {
                    Image(systemName: "checkmark")
                        .foregroundColor(.green)
                
            }.frame(width: 170, height: 60)
        }.navigationBarTitle("Order")
     
        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
    }
    
}
    


struct OrderRecap_Previews: PreviewProvider {
    static var previews: some View {
        OrderRecap(order:test)
    }
}
