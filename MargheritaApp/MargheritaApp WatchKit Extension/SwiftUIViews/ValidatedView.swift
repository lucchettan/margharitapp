//
//  SwiftUIView.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 22/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import SwiftUI

struct ValidatedView: View {
    var body: some View {
        VStack {
            Image("pizza")
                .resizable()
                .padding()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .cornerRadius(10)
                
            Text("Your order has been validated")
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .font(.system(size: 13))
                .fixedSize(horizontal: false, vertical: true)
            
            NavigationLink(destination: TimeCount()){
                    Image(systemName: "checkmark")
            }
                .frame(width: 115, height: 15)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .offset(y: -2)
        }
        .padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
        .navigationBarBackButtonHidden(true)
    }
}

struct ValidatedView_Previews: PreviewProvider {
    static var previews: some View {
        ValidatedView()
    }
}
