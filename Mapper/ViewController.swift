/*
  ViewController.swift
  Mapper

  Created by Grant Spraker on 1/11/22.
*/

import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate
{
    var currentLocation: CLLocation!
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.requestWhenInUseAuthorization()
        mapView.showsUserLocation = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
     currentLocation = locations[0]
    }
    
    @IBAction func ZoomButton(_ sender: Any)
    {
        
    }
}

