////
////  ContentView.swift
////  UserLocationOnMap
////
////  Created by Abraham Morales Arroyo on 2/28/24.
//
//
import SwiftUI
import MapKit

struct number1: View {

    // gets the user's location and displays it on the map
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
//
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

//struct number1_Previews: PreviewProvider {
//    static var previews: some View {
//        number1()
//    }
//}
//to change the locaiton of the map you are going to need the simulator running and once in the simulator got to the features tab and click on location.

//
//import SwiftUI
//
//struct number1: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct number1_Previews: PreviewProvider {
//    static var previews: some View {
//        number1()
//    }
//}
