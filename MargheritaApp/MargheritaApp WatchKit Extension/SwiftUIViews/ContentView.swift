//
//  ContentView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var numberOfPizzas = 0
    @State var pizzaPrices = 4
//    @State var show = false
    
    var body: some View {

        VStack {
            Picker(selection: $numberOfPizzas, label: Text("")){
                ForEach(1..<20) { index in
                    Text("\(index)")
                        .bold()
                        .frame(width: 40, height: 20, alignment: .center)
                        .font(.largeTitle)
                    }
                }
                        .frame(width: 60, height: 60)
             
                    if numberOfPizzas <= 0 {
                Text("Margherita")
                        .font(.headline)
                        .italic()
                    } else {
                Text("Margheritas")
                        .font(.headline)
                        .italic()
                    }
        
                Text("\((numberOfPizzas + 1 ) * pizzaPrices) €")
                    .bold()
                    .foregroundColor(.green)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
           
            
            NavigationLink(destination: PhonePage(order: Order(nombreDePizza: (numberOfPizzas + 1), adress: "",phoneNumber: ""))){
                Text("Pay")
                    .bold()
                    .font(.headline)
                    }
                    .padding()
            Spacer()
                    }
                    .navigationBarTitle(Text("Order"))
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))

                }
            }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
       
     }
  }

