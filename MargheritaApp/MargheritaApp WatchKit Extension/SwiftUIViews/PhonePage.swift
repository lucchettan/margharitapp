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
        VStack {
        VStack(alignment: .leading) {
            Text("Enter your phone number")
                .font(.system(size: 12))
//                .underline()
                .offset(y: 0)
            ZStack{
                HStack{
                    Text("+33")
                        .font(.system(size: 10))
                        .bold()
                        .frame(width: 30)
                        .padding(EdgeInsets(top: 0, leading: -5, bottom: 0, trailing: -10))
                    TextField(self.order.phoneNumber, text:$order.phoneNumber)
                        .textContentType(.telephoneNumber)
                        .font(.footnote)
                        .frame(width: 125, height: 25)
                        .padding(EdgeInsets(top: 35, leading: 0, bottom: 0, trailing: 0))
                        .offset(y: -17)
                }
                .frame(width: 140, height: 25)
                .padding()
                .background(Color.clear)
                .cornerRadius(10)
                .offset(x: -5)
            }
        }
        .offset(y: 20)
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
        Spacer()
            if order.phoneNumber != "" {
                NavigationLink(destination: LocationView(order: order)){
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                }
                    .frame(width: 115, height: 15)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                    .offset(y: 0)
            }
        }
        .navigationBarTitle("Phone")
    }
}

struct PhonePage_Previews: PreviewProvider {
    static var previews: some View {
        PhonePage(order: Order(nombreDePizza: 3, adress: "", phoneNumber: ""))
            .font(.headline)
       
    }
}
