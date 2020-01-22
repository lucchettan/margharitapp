//
//  PhonePage.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//


import SwiftUI

struct PhonePage: View {
    
    @State var order: Order
    
    var body: some View {
        
    VStack(spacing: 20) {
         Spacer()
           
        TextField(self.order.phoneNumber, text:$order.phoneNumber)
                    .textContentType(.telephoneNumber)
                    .padding(EdgeInsets(top: 35, leading: 0, bottom: 0, trailing: 0))
                    
        Spacer()
        
        NavigationLink(destination: LocationView(order: order)){
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }.frame(width: 170, height: 60)
        
       Spacer()
        
        }
    }
}

struct PhonePage_Previews: PreviewProvider {
    static var previews: some View {
        PhonePage(order: Order(nombreDePizza: 3, adress: "", phoneNumber: ""))
            .font(.headline)
       
    }
}
