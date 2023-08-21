//
//  AuthServicees.swift
//  FlightApp
//
//  Created by Avinash Kumar on 21/08/23.
//

import Foundation

class AuthService : ObservableObject {
    
    @Published var signedIn:Bool
    
    init(signedIn:Bool) {
        self.signedIn = signedIn
    }
    
    // Make sure the API calls once they are finished modify the values on the Main Thread
    func signIn() {
        self.signedIn = true
    }
    
    func signOut(){
        self.signedIn = false
    }
}
