//
//  LocationView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 20/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        VStack {
            MapView()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .onTapGesture(perform: {})
            Text(AdressGetter().convertLatLongToAddress(location: CLLocationManager().location!))
        }
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
