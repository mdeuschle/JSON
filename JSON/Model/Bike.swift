//
//  Bike.swift
//  JSON
//
//  Created by Matt Deuschle on 9/25/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

struct Bike {

    let lat: Double
    let lon: Double
    let name: String
    let addressStreet: String
    let bikesAvailable: Double

    init?(coordDic: [String: Any], bikeDic: [String: Any]) {
        if let latAndLon = coordDic["coordinates"] as? [Double],
            let name = bikeDic["name"] as? String,
            let addressStreet = bikeDic["addressStreet"] as? String,
            let bikesAvailable = bikeDic["bikesAvailable"] as? Double
        {
            self.lat = latAndLon[0]
            self.lon = latAndLon[1]
            self.name = name
            self.addressStreet = addressStreet
            self.bikesAvailable = bikesAvailable
        } else {
            return nil
        }
    }
}



