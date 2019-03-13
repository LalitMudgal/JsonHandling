//
//  User.swift
//  jsonHandling
//
//  Created by Lalit on 09/12/18.
//  Copyright © 2018 Lalit. All rights reserved.
//

import Foundation

struct User {
    
    var completed : Bool
    var  id : Int
    var title : String
    var userId : Int
    
    
    init(_ dictionary : [String:Any]) {
        
        self.completed = dictionary["completed"] as? Bool ?? false
        self.id = dictionary["id"] as? Int  ?? 0
        self.title = dictionary["title"] as? String ?? ""
        self.userId = dictionary["useId"] as? Int ?? 0
    }
    
}
