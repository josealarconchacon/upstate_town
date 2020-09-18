//
//  TownMapViewController.swift
//  upstate_tow
//
//  Created by Jose Alarcon Chacon on 9/17/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TownMapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    fileprivate let locationManager: CLLocationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        location_manager()
    }
    
    func location_manager() {
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
    }
    
    
    // CLLocationManagerDelegate method
}


