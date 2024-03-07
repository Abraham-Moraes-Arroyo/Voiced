////
////  PullFromFireBase.swift
////  Voiced
////
////  Created by Abraham Morales Arroyo on 3/3/24.
////
//
//import SwiftUI
//
//// rebukld the file so it matches whatever that I am going to do. avoid deleting files so github does not throw error.
//
//struct PullFromFireBase: View {
//    @EnvironmentObject var firebaseUtility:FirebaseManager
//    
//    @State private var data:[String: Any] = [:]
//    @State private var textData:String = ""
//    var body: some View {
//        VStack{
//            Text(textData)
//        }.onAppear{
//            Task {                                                              // change this when you have time the id: 
//                let firdata = await firebaseUtility.getDocumentFromFirebase(id: "voiced-b1f36")
//                
//                data = firdata
//                if let name = data["Name"] as? String,
//                   let category = data["Category"] as? String,
//                   let latitude = data["latitude"] as? Double,
//                   let longitude = data["longitude"] as? Double,
//                   let address = data["Address"] as? String {
//                    textData = "Type: \(type) \nName: \(name)\nLatitude: \(latitude)\nLongitude: \(longitude)\nAddress: \(address)"
//                }
//            }
//        }
//    }
//    #Preview {
//        PullFromFireBase().environmentObject(FirebaseManager())
//    }
//    
//}
