//
//  adView.swift
//  margin
//
//  Created by USER on 30/05/2019.
//  Copyright © 2019 jungho. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds
import Firebase

var sok = socket(wss: "wss://www.bitmex.com/realtime")
var dark_theme = false

class mainView: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            let tmp = Int(getData("theme2"))
            if (tmp == 0){
                dark_theme = false
            }else{
                dark_theme = true
            }
        }
        
        /*
        Messaging.messaging().subscribe(toTopic: "XBTUSD_9932.5") { error in
            let url = "http://wiffy.io/bitmex/reg/?d=9932.5"
            requestHTTP(url: url,completion: { result in
            })
            print("Subscribed")
        }*/
    }
    
    override func viewDidAppear(_ animated: Bool) {
        sok.is_waiting = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        sok.is_waiting = true
    }
    
}
