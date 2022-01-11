//
//  ViewController.swift
//  Mapper
//
//  Created by Grant Spraker on 1/11/22.
//

import MapKit

class ViewController: UIViewController
{
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let locationManager.requestWhenInUseAuthorization()
        mapView.showUserLocation = true

    }


}

