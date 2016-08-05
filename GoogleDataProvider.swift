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


class GoogleDataProvider {
  var photoCache = [String:UIImage]()
  var placesTask: NSURLSessionDataTask?
  var session: NSURLSession {
    return NSURLSession.sharedSession()
  }
  
  func fectchPlacesNearCoordinate(coordinate: CLLocationCoordinate2D, radius: Double, types:[String], completion: (([GooglePlace]) -> Void)) -> ()
    {
    
    }
}