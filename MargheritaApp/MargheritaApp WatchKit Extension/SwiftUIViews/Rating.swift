//
//  Rating.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct Rating: View {
    var star     = "star"
    var starFill = "star.fill"
    @State var rating = 0
   
    
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<5) { index in
                    Button(action: {self.rating = index + 1}){
                        NavigationLink(destination: ContentView()){
                            Image(systemName: self.rating > index ? self.starFill : self.star)
                        }
                        .frame(width: 25, height: 1)
                      }
                }
            }
            if self.rating == 1 {
                Text("Damn, was that bad ?")
            } else if self.rating == 2 {
                Text("Really sorry to hear that...")
            } else if self.rating == 3 {
                Text("Cool, it will be even better next time.")
            }else if self.rating == 4 {
                Text("Glad you liked it!")
            }else if self.rating == 5{
                Text("Great, really happy to hear that!")
            }else {
                Text("")
            }
        }
        .navigationBarTitle("Enjoy")
    }
}


struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating()
    }
 }

