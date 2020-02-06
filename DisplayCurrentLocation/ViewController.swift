//
//  ViewController.swift
//  DisplayCurrentLocation
//
//  Created by ELLI SCHARLIN on 2/5/20.
//  Copyright © 2020 ELLI SCHARLIN. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        locationManager.requestAlwaysAuthorization()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let locValue: CLLocationCoordinate2D = manager.location?.coordinate else { return }
        print("locations = \(locValue.latitude), \(locValue.longitude)")
    }

}

