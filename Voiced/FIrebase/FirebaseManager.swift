//
//  FirebaseManager.swift
//  Voiced
//
//  Created by Abraham Morales Arroyo on 3/3/24.
//

import Foundation
import Firebase
import FirebaseFirestore

class FirebaseManager:ObservableObject{
//    reads data based on firebaseID
    
    func getDocumentFromFirebase(id:String) async -> [String:Any]{
        let db = Firestore.firestore()
        
        // returns data variables
        
        var data: [String: Any] = [:]
        do{                                                                 // Here     VVV  is where you are going to get document name
            let dataDoc:DocumentSnapshot = try await db.collection("Locations").document("").getDocument()
            
            let documentData = dataDoc.data()
            
            data = documentData!
        } catch{
            print(error.localizedDescription, "Error gettign lcoatin")
        }
        
        return data
    }
    
    // adds basic Data to Firebase
    
    func addData(dataToAdd: String) async{
        let db = Firestore.firestore()
        
        
        
        do{
            //Restuarunt to add....
            let rToAdd = [
                "New Restaurant":dataToAdd,
                "Resturant Locale": "Chicago"
                
            ]
            
            try await db.collection("Restaurants").document(dataToAdd).setData(rToAdd)
            
            
            
        }catch{
            print(error.localizedDescription, "A Error Occured when setting Data")
        }
        
        
        
    
    }
    
//    Add a new point of interest to firebase
    
    func addPOItoFirebase(name: String, category: String, Long: String, lat:String){
        let db = Firestore.firestore()
        
        
        let newPoi = [
            "name": name,
            "category": category,
            "longitude":(Double(long.replacingOccurrences(of: ",", with: "")) ?? 0.0) as Double,
            "latitude":(Double(lat.replacingOccurrences(of: ",", with: "")) ?? 0.0) as Double
        ] as [String : Any]
        
        print(newPoi)
    
        //add new data point, no error will occur, no try catch is needed in this operation with no specific document
        db.collection("PointsOfInterest").addDocument(data: newPoi)
        

    }
    
    
    //get a Point of documents data from
    
    func getPOIDataFromName(pointName:String) async -> [String:Any]{
        
        let fs = Firestore.firestore()
        
        //query the database for anything matching what the user put for a name point,
        //only return 1 thing from firebase, and convert it to this class values
        
        let dataPoint = fs.collection("PointsOfInterest").whereField("name", isEqualTo: pointName).limit(to: 1)
        
        //do - catch for async calls
        var newPoiData:[String:Any] = [:]
        
        do{
            
            let dataSnapshot = try await dataPoint.getDocuments()
            
            //query snapshot is a array, so only get one item [0]
            
            let poIDocument = dataSnapshot.documents[0]
            
            //turn it into data and set class data
            let poiData = poIDocument.data()
            newPoiData = poiData
            
            
            
        }catch{
            print("\(error) + An Error Has Occured Retrieving data")
        }
        
        return newPoiData
        
    }
    
    
}
