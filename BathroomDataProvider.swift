//
//  GoogleDataProvider.swift
//  GottaGo
//
//  Created by Lauren Nicole Roth on 8/5/16.
//  Copyright © 2016 Skedaddle. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation


class BathroomDataProvider {
  var photoCache = [String:UIImage]()
  var bathroomsTask: NSURLSessionDataTask?
  var session: NSURLSession {
    return NSURLSession.sharedSession()
  }
  
  func fetchPlacesNearCoordinate(coordinate: CLLocationCoordinate2D, radius: Double, types:[String], completion: (([Bathroom]) -> Void)) -> ()
    {
      var urlString = "http://localhost:1000/maps/api/place/nearbysearch/json?location=\(coordinate.latitude),\(coordinate.longitude)&radius)&rankby=prominence&sensor=true"
      let typesString = types.count > 0 ? types.joinWithSeparator("|") : "bathroom"
      urlString = urlString.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
      
      if let task = bathroomsTask where task.taskIdentifier > 0 && task.state == .Running {
        task.cancel()
      }
      
      UIApplication.sharedApplication().networkActivityIndicatorVisible = true
      bathroomsTask = session.dataTaskWithURL(NSURL(string: urlString)!) {
        data, response, error in
        
        
        
      }
    }
}