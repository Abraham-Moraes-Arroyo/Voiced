//
//  ContentView.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 2/27/24.
//

import SwiftUI

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
