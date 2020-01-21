//
//  GetAdress.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 20/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
////
//import MapKit
//import CoreLocation
//
//class GetAdress {
////  don't forget to add privacy when  in use description in plist
//    
//    var locationManager = CLLocationManager()
//    func getAdress() -> String {
//        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//        var myadress = ""
//        CLGeocoder().reverseGeocodeLocation(CLLocation(latitude: (locationManager.location?.coordinate.latitude)!, longitude: (locationManager.location?.coordinate.longitude)!), completionHandler: {(placemarks, error) -> Void in
//            if error != nil {
//                print("failed")
//                myadress = "Location Failed"
//            }
//            if (placemarks?.count)! > 0 {
//                let pm = placemarks?[0]
//                myadress = (pm?.compactAddress!)!
//                print(myadress)
//            } else {
//                print ("error ")
//                myadress = "i don't have adress for you baby"
//            }
//        })
//        return myadress
//    }
//    
//    func checkLocationAuthorization() {
//        switch CLLocationManager.authorizationStatus() {
//            case .authorizedWhenInUse:
//                locationManager.startUpdatingLocation()
//                break
//            case .denied:
//                locationManager.requestWhenInUseAuthorization()
//                checkLocationAuthorization()
//                break
//            case .notDetermined:
//                locationManager.requestWhenInUseAuthorization()
//                checkLocationAuthorization()
//
//            case .restricted:
//                locationManager.requestWhenInUseAuthorization()
//                checkLocationAuthorization()
//                break
//            case .authorizedAlways:
//                locationManager.startUpdatingLocation()
//                break
//        @unknown default:
//            fatalError()
//        }
//    }
//}
//
//extension CLPlacemark {
//    var compactAddress: String? {
//        if let name = name {
//            var result = name
//            if let streetnumber = subThoroughfare {
//                result += "\(streetnumber)"
//            }
//            if let street = thoroughfare {
//                result += ", \(street)"
//            }
//            if let city = locality {
//                result += ", \(city)"
//            }
//            return result
//        }
//        return nil
//    }
//}
