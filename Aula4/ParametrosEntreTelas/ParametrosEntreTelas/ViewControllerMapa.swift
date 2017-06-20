//
//  ViewControllerMapa.swift
//  ParametrosEntreTelas
//
//  Created by Cristiano Diniz Pinto on 01/06/17.
//  Copyright © 2017 Cristiano Diniz Pinto. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMapa: UIViewController,CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let locationM = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.locationM.delegate = self
        self.locationM.requestWhenInUseAuthorization()
        self.locationM.startUpdatingLocation()
        
        
        self.mapView.showsUserLocation = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func vaiAction(_ sender: Any) {
        
        let userLocation = self.mapView.userLocation
        
        let coordinate = userLocation.location?.coordinate
        
        if let coordinate = coordinate{
            let region = MKCoordinateRegionMakeWithDistance(coordinate, 200,200);
            self.mapView.setRegion(region, animated: true)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
