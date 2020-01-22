//
//  MapView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct LocationView: View {
   
    @State var order: Order
    var body: some View {
        VStack {
            MapRepresentable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            AdressView()
                .lineLimit(1)
            
            NavigationLink(destination: OrderRecap(order: order)){
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
            }
                .frame(width: 115, height: 15)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .offset(y: 0.5)

        }
            .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
//            .navigationBarBackButtonHidden(true)
            .navigationBarTitle("location")
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(order: Order(nombreDePizza: 3, adress: "", phoneNumber: ""))
    }
}
