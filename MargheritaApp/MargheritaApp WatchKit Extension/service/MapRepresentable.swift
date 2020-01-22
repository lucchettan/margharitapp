//
//  MapView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 20/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//


import SwiftUI
import MapKit
import CoreLocation

//---> WKInterfaceObjectRepresentable = UIViewControllerRepresentable on WatchKit---------------------------------------------------

struct MapRepresentable: WKInterfaceObjectRepresentable {
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 1000
    
//------> This will create our map element
    func makeWKInterfaceObject(context: WKInterfaceObjectRepresentableContext<MapRepresentable>) -> WKInterfaceMap {
        checkLocationAuthorization()
        return WKInterfaceMap()
    }
    
    
    func updateWKInterfaceObject(_ map: WKInterfaceMap, context: WKInterfaceObjectRepresentableContext<MapRepresentable>) {
//----> we set our map on the CLLocationManager.location.coordinate, wich are our current coordinate
//        if let location = locationManager.location?.coordinate {
//            print(location)
//            let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
//            let region = MKCoordinateRegion(center: location, span: span)
//            map.setRegion(region)
//            map.addAnnotation(location, with: .red)
//        }
                    let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                    let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:40.836181, longitude: 14.306508), span: span)
                    map.setRegion(region)
                    map.addAnnotation(CLLocationCoordinate2D(latitude:40.836181, longitude: 14.306508), with: .red)
    }
    
//----> Check the authorization to access the private GPS data
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
            case .authorizedWhenInUse:
                locationManager.startUpdatingLocation()
                break
            case .denied:
                locationManager.requestWhenInUseAuthorization()
                break
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted:
                locationManager.requestWhenInUseAuthorization()
                break
            case .authorizedAlways:
                locationManager.startUpdatingLocation()
                break
        @unknown default:
            fatalError()
        }
    }
    
}

struct MapRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        MapRepresentable()
    }
}
