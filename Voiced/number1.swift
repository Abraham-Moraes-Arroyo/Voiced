//
//  number1.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 2/28/24.
//

import SwiftUI
import MapKit
import CoreLocation

// Coordinates to the back of the yards from APPLE MAPS
// 41.808709, -87.655686

struct number1: View {
    @State private var region =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.808709, longitude: -87.655686), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    var body: some View {
        ZStack{
            VStack{
                Map(coordinateRegion: $region).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            // end of map
        }
    }
}

#Preview {
    number1()
}
