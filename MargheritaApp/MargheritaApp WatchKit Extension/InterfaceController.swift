//
//  InterfaceController.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 15/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//

import WatchKit
import Foundation

//
//class InterfaceController: WKInterfaceController {
//
//    @IBAction func SendBtn() {
//        MessageService().sendMsg()
//    }
//    override func awake(withContext context: Any?) {
//        super.awake(withContext: context)
//
//        // Configure interface objects here.
//    }
//
//    override func willActivate() {
//        // This method is called when watch view controller is about to be visible to user
//        super.willActivate()
//    }
//
//    override func didDeactivate() {
//        // This method is called when watch view controller is no longer visible
//        super.didDeactivate()
//    }
//
//}



import WatchKit
import Foundation
import SwiftUI

class InterfaceController: WKHostingController<RingView> {
    
//Here we launch with quantity selector View
    override var body: RingView {
        return RingView()
    }
}
