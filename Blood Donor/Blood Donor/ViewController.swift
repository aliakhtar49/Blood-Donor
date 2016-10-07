//
//  ViewController.swift
//  Blood Donor
//
//  Created by Ali Akhtar on 8/24/16.
//  Copyright © 2016 Ali Akhtar. All rights reserved.
//


import UIKit
import GoogleMaps
import CoreLocation
class ViewController: UIViewController, CLLocationManagerDelegate {

    
    var location : CLLocationManager!
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    override func viewDidLoad() {
       
        
        
        super.viewDidLoad()
        let camera = GMSCameraPosition.camera(withLatitude: 24.932020,
                                                          longitude:67.111209, zoom:12)
        
        
        
        
        
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera:camera)
        let markerOfBloodBank = GMSMarker()
        markerOfBloodBank.position = CLLocationCoordinate2DMake(24.932669, 67.111209)
        markerOfBloodBank.appearAnimation = kGMSMarkerAnimationPop
        let imageName = "bloodPin.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 45, height: 60)
        markerOfBloodBank.iconView = imageView
        markerOfBloodBank.title = "Blood Bank"
        markerOfBloodBank.map = mapView
        self.view = mapView

        
        if self.revealViewController() != nil {
            menuBar.target = self.revealViewController()
            menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
       // getLocation()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func getLocation() {
        if(location == nil) {
            location = CLLocationManager()
            location.delegate = self
            location.desiredAccuracy = kCLLocationAccuracyKilometer
            location.distanceFilter = 500
            location.startUpdatingHeading()
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // If it's a relatively recent event, turn off updates to save power.
        
       
        
        
        
        let newLocation : CLLocation = locations.last!
        let eventDate : Date = newLocation.timestamp
        let howRecent : TimeInterval  = eventDate.timeIntervalSinceNow
        if(abs(howRecent) < 15.0 ){
            // If the event is recent, do something with it.
            
            
           
        }
        
        
        
        //Current location 
//        let markerOfCurrentlocation = GMSMarker()
//        markerOfCurrentlocation.position = CLLocationCoordinate2DMake(newLocation.coordinate.latitude, newLocation.coordinate.longitude)
//        markerOfCurrentlocation.appearAnimation = kGMSMarkerAnimationPop
//        let imageNameOf = "flag_icon.jpeg"
//        let image1 = UIImage(named: imageNameOf)
//        let imageView1 = UIImageView(image: image1!)
//        imageView1.frame = CGRect(x: 0, y: 0, width: 56, height: 77)
//        markerOfCurrentlocation.iconView = imageView1
//        markerOfCurrentlocation.title = "Current Location"
//        markerOfCurrentlocation.map = mapView
        
        
        
        
    }

}


// Delegate method from the CLLocationManagerDelegate protocol.
//- (void)locationManager:(CLLocationManager *)manager
//didUpdateLocations:(NSArray *)locations {
//    // If it's a relatively recent event, turn off updates to save power.
//    CLLocation* location = [locations lastObject];
//    NSDate* eventDate = location.timestamp;
//    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
//    if (abs(howRecent) < 15.0) {
//        // If the event is recent, do something with it.
//        NSLog(@"latitude %+.6f, longitude %+.6f\n",
//               location.coordinate.latitude,
//               location.coordinate.longitude);
//    }
//}
