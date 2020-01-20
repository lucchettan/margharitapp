//
//  AdressGetter.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 20/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

class AdressGetter {
    let locationManager = CLLocationManager()


    func convertLatLongToAddress(location:  CLLocation) -> String {

        let geoCoder = CLGeocoder()
        geoCoder.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) in

            // Place details
            var placeMark: CLPlacemark!
            placeMark = placemarks?[0]

            // Location name
            if let locationName = placeMark.location {
                print(locationName)
            }
            // Street address
            if let street = placeMark.thoroughfare {
                print(street)
            }
            // City
            if let city = placeMark.subAdministrativeArea {
                print(city)
            }
            // Zip code
            if let zip = placeMark.isoCountryCode {
                print(zip)
            }
            // Country
            if let country = placeMark.country {
                print(country)
            }
        })
        return "Bullshit"
    }
}
