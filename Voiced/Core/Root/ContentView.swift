//
//  ContentView.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 2/27/24.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View {
    var body: some View {
        TabView{
            number1()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            number2()
                 .tabItem {
                     Image(systemName: "map")
                     Text("Tours")
                 }
            number3()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Help")
                }
           
      
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
