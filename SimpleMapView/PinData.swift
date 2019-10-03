//
//  PinData.swift
//  SimpleMapView
//
//  Created by 김종현 on 01/10/2019.
//  Copyright © 2019 csd5766. All rights reserved.
//

import UIKit
import MapKit

class PinData: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    
    init(la : CLLocationDegrees, lo : CLLocationDegrees, title:String, subtitle:String) {
        self.coordinate = CLLocationCoordinate2D(latitude: la, longitude: lo)
        self.title = title
        self.subtitle = subtitle
    }
    
}
