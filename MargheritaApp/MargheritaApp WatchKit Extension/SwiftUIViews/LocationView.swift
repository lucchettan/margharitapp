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
    
    var locationManager = CLLocationManager()
    func getAdress() -> String {
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
   //        next lines: -------for current location-------

        if order.adress.count <= 5 {
//            ------------------------------------------line beneath is to set testing position values----------
//            CLGeocoder().reverseGeocodeLocation(CLLocation(latitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!), completionHandler: {(placemarks, error) -> Void in
            CLGeocoder().reverseGeocodeLocation(CLLocation(latitude:49.100546, longitude: 2.520899), completionHandler: {(placemarks, error) -> Void in
                   if error != nil {
                        self.order.adress += "Location Failed"
                        return
                   }
                   if placemarks?[0] != nil {
                       print("TOZ by Chouat.")
                       self.order.adress += (placemarks?[0].compactAddress!)!
                        print(self.order.adress)
                       return
                   } else {
                       print ("error ")
                       self.order.adress += "i don't have adress for you baby"
                    return
                   }
               })
        }
           return ""
    }

    var body: some View {
        VStack {
            MapRepresentable()
                .scaledToFit()
                .frame(width: 90, height: 90)
            HStack{
                Text(getAdress() + self.order.adress)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
            }
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

extension CLPlacemark {
    var compactAddress: String? {
        if let name = name {
            var result = ""
            if let streetnumber = subThoroughfare {
                result += "\(streetnumber)"
            }
            if let street = thoroughfare {
                result += ", \(street)"
            }
            if let city = locality {
                result += ", \(city)"
            }
            print(result)
            return result
        }
        return nil
    }
}
