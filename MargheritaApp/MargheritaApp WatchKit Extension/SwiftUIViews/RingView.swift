//
//  RingView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 18/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct RingView: View {
    @State var show = false
    var body: some View {
        VStack {
            Text("hey")
                .onTapGesture {self.show.toggle()}

            Circle()
                .trim(from: 0.1, to: 1)
                .stroke(Color.white, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(90))
                .rotation3DEffect(Angle(degrees: 90), axis: (x: 1, y: 0, z: 0))
                .frame(width: 100, height: 100)
                .animation(.easeOut)
                .onTapGesture {self.show.toggle()}
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
    }
}
