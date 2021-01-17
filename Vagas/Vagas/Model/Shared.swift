//
//  Shared.swift
//  Vagas
//
//  Created by Kelvin Javorski Soares on 17/01/21.
//

import Foundation
import FirebaseDatabase

class Model{
    static var shared: Model = {
        let instance = Model()
        
        return instance
    }()
    
    static var UserID: Int = 0

    var ref = Database.database().reference()
}
