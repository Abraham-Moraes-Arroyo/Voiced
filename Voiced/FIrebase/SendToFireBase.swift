////
////  SendToFireBase.swift
////  Voiced
////
////  Created by Abraham Morales Arroyo on 3/1/24.
////
//
//
//import SwiftUI
//import MapKit
//import Firebase
//import FirebaseFirestore
//
//struct Issuelocations: Decodable {
//    var issuelocations: [location2]
//    
//    enum CodingKeys: String, CodingKey {
//        case issuelocations = "Issue Locations"
//    }
//}
//// decides to use data elsewhere or in this functions
//// what we might want to do, have a view model  of the function of the file that we want to call this, have a view model to control the call to the firebase. Right now we are global. 
//struct SendToFireBase: view{
//    var body: some View{
//        VStack{
//            Button("Push Issue")
//            // call the funciton when the butotn is tapped
//            uploadIssueLocationToFirebase()
//        }
//        
//    }
//}
//
//func uploadIssueLocationToFirebase(locations: [location2]){
//    let db = Firestore.firestore()
//    let firebaseLocations = db.collection("Locations")
////            self.init(name: Name, category: Category, latitude: latitude, longitude: longitude)
//
//    for location in locations {
//        reverseGeocoder(coordinate: location.coordinate) { address in
//            var data: [String: Any] = [
//                "Name": location.name,
//                "Category": location.category,
//                "Latitude": location.coordinate.latitude,
//                "Longitude": location.coordinate.longitude
//                
//            ]
//            if let address = address {
//                data["Address"] = address
//            }
//            let firebaseLocation = firebase.addDocument(data: data)
//        }
//    }
//}
////clean lines 55 and below
//func uploadIssuesLocationsToFireBase(){
//    if let path = Bundle.main.path(forResource: "Issues_Locations", ofType: "json") {
//        // reads the json data from the file
//        
//        let jsonData = try Data(contentsOf: URL(fileURLWithPath: path))
//        
//        // decoddes json file to locaitons instnace
//        
//        let decoder = JSONDecoder()
//        let issuelocations = try decoder.decode(Issuelocations)
//        
//        // calls uploadIssueLocationToFirebase()
//        uploadIssuesLocationsToFireBase(locations: Issuelocations.issueLocations)
//    } catch {
//        print("Error reading of decoding JSON \(error)")
//    } else {
//        print("JSON FILE NOT FOUND ")
//    }
//}
//
//func reverseGeocodeLocation(coordinate: CLLocationCoordinate2D, completion: @escaping (String?) -> Void) {
//    let location = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
//    let geocoder = CLGeocoder()
//
//    geocoder.reverseGeocodeLocation(location) { (placemarks, error) in
//        if let error = error {
//            print("Reverse geocoding error: \(error.localizedDescription)")
//            completion(nil)
//        } else if let placemark = placemarks?.first {
//            // this is to create an accurate point drop
//            var Address: String = ""
//            
//            if let subThoroughfare = placemark.subThoroughfare {
//                Address += subThoroughfare + " "
//            }
//            
//            if let thoroughfare = placemark.thoroughfare {
//                Address += thoroughfare + ", "
//            }
//            
//            if let locality = placemark.locality {
//                Address += locality + ", "
//            }
//            
//            if let state = placemark.administrativeArea {
//                Address += state + ", "
//            }
//            
//            if let postalCode = placemark.postalCode {
//                Address += postalCode
//            }
//            completion(Address)
//        } else {
//            completion(nil)
//        }
//    }
//}
//
//func geocodeLocation(address: String, completion: @escaping (CLLocationCoordinate2D?) -> Void) {
//    let geocoder = CLGeocoder()
//
//    geocoder.geocodeAddressString(address) { (placemarks, error) in
//        if let error = error {
//            print("Geocoding error: \(error.localizedDescription)")
//            completion(nil)
//        } else if let placemark = placemarks?.first, let location = placemark.location {
//            completion(location.coordinate)
//        } else {
//            completion(nil)
//        }
//    }
//}
//
//struct SendToFireBase_Previews: PreviewProvider {
//    static var previews: some View {
//        SendToFireBase()
//    }
//}
