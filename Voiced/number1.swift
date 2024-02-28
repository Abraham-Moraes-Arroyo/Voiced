//
//  number1.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 2/28/24.
//

import SwiftUI
import MapKit
import CoreLocation



struct number1: View {
    @State private var region =
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.4300, longitude: -122.1700), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
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
