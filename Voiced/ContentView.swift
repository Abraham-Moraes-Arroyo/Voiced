//
//  ContentView.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 2/27/24.
//
import Firebase
import SwiftUI
import MapKit
import CoreLocation
// this is the view, next wee need to make the view model, manages all the changes that happen to the data, calling firebase, changing numbers and all data arch. 
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

#Preview {
    ContentView()
}
