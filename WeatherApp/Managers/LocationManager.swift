//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Maria José Sánchez Cairazco on 15/10/24.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    // New instance of the Location Manager
    let manager = CLLocationManager()
    
    // Two published variables: location and the loading state.
    // location must be optional due to user permissions, if the app is not granted access to location, it'll be empty.
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("Error getting location: ", error)
        isLoading = false
    }
}
