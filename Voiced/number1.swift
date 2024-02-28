//
//  ContentView.swift
//  UserLocationOnMap
//
//  Created by Abraham Morales Arroyo on 2/28/24.
//

import SwiftUI
import MapKit

struct number1: View {
    // gets the user's location and displays it on the map
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    var body: some View {
        Map(position: $position) {
            
            
        }
        .mapControls {
            MapUserLocationButton()
            MapPitchToggle()
        }
        .onAppear(){
            CLLocationManager().requestWhenInUseAuthorization()
        }
    }
}

#Preview {
    number1()
}
//to change the locaiton of the map you are going to need the simulator running and once in the simulator got to the features tab and click on location.
