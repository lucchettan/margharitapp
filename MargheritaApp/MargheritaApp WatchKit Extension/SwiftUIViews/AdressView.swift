//
//  AdressView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 21/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI
import CoreLocation

//This View is just a Hstack with the current adress inside

struct AdressView: View {
    var locationManager = CLLocationManager()
    @State var adress = ""
    func getAdress() -> String {
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//        CLGeocoder().reverseGeocodeLocation(CLLocation(latitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!), completionHandler: {(placemarks, error) -> Void in
        CLGeocoder().reverseGeocodeLocation(CLLocation(latitude:40.836181, longitude: 14.306508), completionHandler: {(placemarks, error) -> Void in
            if error != nil {
                self.adress += "Location Failed"
            }
            if ((placemarks?[0]) != nil) {
                print("TOZ")
                let pm = placemarks?[0]
                self.adress += (pm?.compactAddress!)!
//                print((pm?.compactAddress!)!)
                print(self.adress)
            } else {
                print ("error ")
                self.adress += "i don't have adress for you baby"
            }
        })
        return ""
    }
    
    var body: some View {
        HStack{
            Text(getAdress() + adress)
                .multilineTextAlignment(.center)
                .font(.footnote)
                .foregroundColor(.red)
        }
    }
}

struct AdressView_Previews: PreviewProvider {
    static var previews: some View {
        AdressView()
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
            return result
        }
        return nil
    }
}
