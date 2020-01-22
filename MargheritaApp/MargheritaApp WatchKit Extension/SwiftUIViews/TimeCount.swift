//
//  TimeCount.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Florent Frossard on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct TimeCount: View {
    
    @State var value : CGFloat = 0
    @State var time : Int = 0

    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                 .trim(from: 0, to: 1)
                 .stroke(Color(.gray),style: StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round))
                 .rotationEffect(.degrees(-90))
                 .frame(width: 100, height: 100)
                
               Circle()
                .trim(from: 0, to: value)
                .stroke(Color(.green),style: StrokeStyle(lineWidth: 7, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(-90))
                .frame(width: 100, height: 100)
                

                HStack {
                    Text((time / 60 * 60 < 10) ? "0\(time / 60 % 60 ) :": "\(time / 60 % 60 ) :")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: -3))
                    Text((time % 60 < 10) ? "0\(time % 60 )": "\(time % 60 )")
                }
            }.onAppear {
                 Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
                    print("plus 1")
                    self.value += 0.0011111111
                    self.time += 1
                    if (self.value <= 0.9 && self.time == 900){
                        timer.invalidate()
                    }
                }
            }
            Spacer()
            NavigationLink(destination: Rating()) {
                Image(systemName: "checkmark")
                    .foregroundColor(.green)
            }
        }.padding()
    }
}