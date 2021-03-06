//
//  GooglePlace.swift
//  GottaGo
//
//  Created by Lauren Nicole Roth on 8/5/16.
//  Copyright © 2016 Skedaddle. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit
import SwiftyJSON

class GooglePlace {
  let name: String
  let address: String
  let coordinate: CLLocationCoordinate2D
  let placeType: String
  var photoReference: String?
  var photo: UIImage?
  
  init(dictionary:[String: AnyObject], acceptedTypes: [String]) {
    let json = JSON(dictionary)
    name = json["name"].stringValue
    
  }
}