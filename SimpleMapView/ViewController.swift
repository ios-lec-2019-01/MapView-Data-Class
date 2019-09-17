//
//  ViewController.swift
//  SimpleMapView
//
//  Created by D7702_09 on 2019. 9. 17..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // 중심점 잡기
        let center = CLLocationCoordinate2D(latitude: 35.165775, longitude: 129.072537)
        let center2 = CLLocationCoordinate2D(latitude: 35.164236,
            longitude: 129.064941)
        let center3 = CLLocationCoordinate2D(latitude: 35.167629, longitude: 129.070595)
        // 범위 잡기
//        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
//        let region = MKCoordinateRegion(center: center, span: span)
        
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        
        let point = MKPointAnnotation()
        point.coordinate = center
        point.title = "test"
        point.subtitle = "t"
        mapView.addAnnotation(point)
        
        let point2 = MKPointAnnotation()
        point2.coordinate = center2
        point2.title = "송상현광장"
        point2.subtitle = "공원"
        mapView.addAnnotation(point2)
        
        let point3 = MKPointAnnotation()
        point3.coordinate = center3
        point3.title = "번개반점"
        point3.subtitle = "중국 음식점"
        mapView.addAnnotation(point3)
        
        mapView.showAnnotations([point, point2, point3], animated: true)
        
    }

    @IBAction func standard(_ sender: Any) {
        mapView.mapType = MKMapType.standard
     
    }
    
    @IBAction func satelite(_ sender: Any) {
        mapView.mapType = MKMapType.satellite
       
    }
    
    @IBAction func hybrid(_ sender: Any) {
        mapView.mapType = MKMapType.hybrid
        
    }
    
    
}

