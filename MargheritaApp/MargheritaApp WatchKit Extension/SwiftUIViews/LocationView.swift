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
                .frame(width: 100, height: 100)
            AdressView()
            Spacer()
            NavigationLink(destination: OrderRecap(order: order)) {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }.frame(width: 170, height: 30)
        }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView(order: Order(nombreDePizza: 3, adress: "", phoneNumber: ""))
    }
}
