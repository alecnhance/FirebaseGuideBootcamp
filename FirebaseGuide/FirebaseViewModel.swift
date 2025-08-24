//
//  FirebaseViewModel.swift
//  FirebaseGuide
//
//  Created by Alec Hance on 1/27/25.
//

import Foundation
import FirebaseFirestore

// This is the solution

class FirebaseViewModel: ObservableObject {
    let db = Firestore.firestore()
    var onSetupCompleted: ((FirebaseViewModel) -> Void)?
    
    static let vm = FirebaseViewModel()
    func configure() {
        self.onSetupCompleted?(self)
    }
    
    func readFromAlec() async -> Int {
        let docRef = db.collection("USER").document("Alec Hance")
        
        do {
            let document = try await docRef.getDocument()
            if document.exists {
                guard let iq = document.data()?["IQ"] as? Int else {
                    print("iq is not an int")
                    return -1
                }
                return iq
            } else {
                print("document doesn't exist")
                return -1
            }
        } catch {
            print("message")
            return -1
        }
    }
    
    func writeToBuzz(data: Int) async -> Bool {
        let ref = db.collection("USER").document("Buzz")
        
        do {
            try await ref.updateData([
                "IQ": data
            ])
            return true
        } catch {
            return false
        }
    }
}
