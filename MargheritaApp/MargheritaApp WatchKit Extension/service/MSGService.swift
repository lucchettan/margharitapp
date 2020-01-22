//
//  MSGService.swift
//  MargheritaApp WatchKit Extension
//
//  Created by Nicolas Lucchetta on 15/01/2020.
//  Copyright © 2020 Nicolas Lucchetta. All rights reserved.
//


import UIKit
import Alamofire

class MessageService {
    func sendMsg (){
        print("on the way")
/* Don't forget to change info.plist file to make the process
   the last keys  Like the guy does in the tutorial         */
        
        
//        let user = "u30f8fd6c69a53f14b5ae46b18799757f"
//        let password = "44D9F8339F550203DF58F53D58C91053"
        
        
//        msg is  0.7€ so don't waste messages, it works don't worry.
        let user = ""
        let password = ""
        let parameters = [
            "from"  : "MarheritApp",
            "to" : "+33612950305",
            "message" : "Kiko got that shit bruh i'm sending you message from an applewatch button guy's good week end.",
            "flashsms" : "no"
        ]
        let credential = URLCredential(user: user, password: password, persistence: .forSession)

        Alamofire.request("https://api.46elks.com/a1/sms", method: .post, parameters: parameters)
            .authenticate(usingCredential: credential)
            .responseString{ response in
                print(response)
                print("i'm in")
        }
    }
}
