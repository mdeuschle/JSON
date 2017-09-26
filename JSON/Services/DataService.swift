//
//  DataService.swift
//  JSON
//
//  Created by Matt Deuschle on 9/25/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import Foundation

class DataService {

    static let instance = DataService()

    func getBikeData(handler: @escaping (Bool, [Bike]) -> ()) {
        var bikeArray = [Bike]()
        guard let url = URL(string: URLString.json.rawValue) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if data != nil && error == nil {
                do {
                    if let object = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any] {
                        if let bikes = object["features"] as? [[String: Any]] {
                            for bike in bikes {
                                if let bikeStationDic = bike["properties"] as? [String: Any],
                                    let coordinatesDic = bike["geometry"] as? [String: Any] {
                                    let bike = Bike(coordDic: coordinatesDic, bikeDic: bikeStationDic)
                                    bikeArray.append(bike!)
                                }
                            }
                        }
                    }
                    let validBikes = bikeArray.flatMap { $0 }
                    handler(true, validBikes)
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }
}
