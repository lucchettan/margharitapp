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

struct MapView: WKInterfaceObjectRepresentable {
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 1000
    
//------> This will create our map element
    func makeWKInterfaceObject(context: WKInterfaceObjectRepresentableContext<MapView>) -> WKInterfaceMap {
        checkLocationAuthorization()
        let map = WKInterfaceMap()
        return map
    }
    
    func checkLocationAuthorization() {
        var map : WKInterfaceMap
        switch CLLocationManager.authorizationStatus() {
            case .authorizedWhenInUse:
                locationManager.startUpdatingLocation()
                break
            case .denied:
                checkLocationAuthorization()
                break
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
            case .restricted:
                checkLocationAuthorization()
                break
            case .authorizedAlways:
                break
        }
    }
    

    func updateWKInterfaceObject(_ map: WKInterfaceMap, context: WKInterfaceObjectRepresentableContext<MapView>) {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            map.setRegion(region)
            map.addAnnotation(location, with: .red)
            AdressGetter().convertLatLongToAddress(location: CLLocation(latitude: location.latitude, longitude: location.longitude))
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

//extension MapView: MKMapViewDelegate {
//  // 1
//  func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//    // 2
//    guard let annotation = establishment?.annotation else { return nil}
//    let identifier = "marker"
//    var view: MKMarkerAnnotationView
//    // 4
//    if let dequeuedView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView {
//      dequeuedView.annotation = annotation
//      view = dequeuedView
//    } else {
//      // 5
//      view = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
//      view.canShowCallout = true
//      view.calloutOffset = CGPoint(x: -5, y: 5)
//      view.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
//    }
//    return view
//  }
//}
