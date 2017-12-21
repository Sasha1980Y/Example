//
//  UserModel.swift
//  Example
//
//  Created by Alexander Yakovenko on 12/21/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation
/*
struct User {
    var name: String
    var lastName: String?
    var age: Int?
}
*/
class User: NSObject, NSCoding {
    
    var name: String
    var lastName: String
    var age: Int
    
    
    init(name: String, lastName: String, age: Int) {
        self.name = name
        self.lastName = lastName
        self.age = age
    }
    required init(coder decoder: NSCoder) {
        self.name = decoder.decodeObject(forKey: "name") as! String //as? String ?? ""
        self.lastName = decoder.decodeObject(forKey: "lastName") as? String ?? ""
        self.age = decoder.decodeInteger(forKey: "age") 
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(lastName, forKey: "lastName")
        coder.encode(age, forKey: "age")
    }
}


