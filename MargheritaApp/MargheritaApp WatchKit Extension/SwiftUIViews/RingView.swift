//
//  RingView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 18/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        VStack {
            NavigationLink(destination: LocationView()){
                Text("hey")
            }
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
