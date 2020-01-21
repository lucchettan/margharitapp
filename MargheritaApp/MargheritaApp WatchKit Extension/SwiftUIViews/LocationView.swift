//
//  LocationView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 20/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//
import SwiftUI
import CoreLocation

struct LocationView: View {
    var body: some View {
        VStack {
            MapView()
                .scaledToFit()
                .frame(width: 100, height: 100)
            AdressView()
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
