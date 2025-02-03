//
//  User.swift
//  ARchive
//
//  Created by David Romero on 2025-02-03.
//

import Foundation
import SwiftUI

///Data Model to represesnt the user.
struct User{
    var id:UUID
    var fullName: String
    var email:String
    
    //returns users name as initals (David Romero --> DR)
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName){
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        return ""
    }
}
//MOCK_USER used to supliment a user in code for debugging & #Preview purposes
extension User{
    static var MOCK_USER = User(
        id: UUID(),
        fullName: "Adolfo David Romero",
        email: "Example@Email.com"
    )
    
}
