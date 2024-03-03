//
//  PullFromFireBase.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 3/3/24.
//

import SwiftUI

struct PullFromFireBase: View {
    @EnvironmentObject var firebaseUtility:FirebaseManager
    
    @State private var data:[String: Any] = [:]
    @State private var textData:String = ""
    var body: some View {
        VStack{
            Text(textData)
        }.onAppear{
            Task {
                let firdata = await firebaseUtility.getDocumentFromFirebase(id: "")
                
                data = firdata
                if let name = data["Name"] as? String,
                   let category = data["Category"] as? String,
                   let latitude = data["latitude"] as? Double,
                   let longitude = data["longitude"] as? Double,
                   let address = data["Address"] as? String {
                    textData = "Type: \(type) \nName: \(name)\nLatitude: \(latitude)\nLongitude: \(longitude)\nAddress: \(address)"
                }
            }
        }
    }
    #Preview {
        PullFromFireBase().environmentObject(FirebaseManager())
    }
    
}
