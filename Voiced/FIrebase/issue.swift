////
////  issue.swift
////  Voiced
////
////  Created by Abraham Morales Arroyo on 2/29/24.
////
//
//import Foundation
//import Firebase
//import FirebaseCore
//
//class issue: ObservableObject {
//    
//    // data fields for firebase
//    @Published var Name: String = ""
//    
//    @Published var Category: String = ""
//    
//    @Published var longitude: Double = 0.0
//    
//    @Published var latitude: Double = 0.0
//
//    
//    
//    var dictionary: [String: Any] {
//        return ["Name": Name, "Category": Category, "latitude": latitude, "longitude": longitude]
//    }
//    
//    init(name: String, category: String, latitude: Double, longitude: Double){
//        self.Name = name
//        self.Category = category
//        self.latitude = latitude
//        self.longitude = longitude
//    }
//    
//    convenience init () {
//        self.init(name: "", category: "", latitude: 0.0, longitude: 0.0)
//    }
//    
//    convenience init (dictionary:[String: Any]){
//        let Name = dictionary["Name"] as! String? ?? ""
//        let Category = dictionary["Category"] as! String? ?? ""
//        let latitude = dictionary["latitude"] as! Double? ?? 0.0
//        let longitude = dictionary["longitude"] as! Double? ?? 0.0
//        
//        self.init(name: Name, category: Category, latitude: latitude, longitude: longitude)
//        
//    }
//}
