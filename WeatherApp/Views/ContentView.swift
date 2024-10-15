//
//  ContentView.swift
//  WeatherApp
//
//  Created by Maria José Sánchez Cairazco on 11/10/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                                
                            } catch {
                                print("Error getting weather: \(error)")
                            }
                        }
                }
                
                Text("Your coordinates are: \(location.latitude), \(location.longitude)")
            } else if locationManager.isLoading {
                LoadingView()
            } else {
                WelcomeView()
                    .environmentObject(locationManager)
            }
        }
        .background(Color(hue: 0.671, saturation: 0.786, brightness: 0.488))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
