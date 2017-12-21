//
//  ViewModel.swift
//  Example
//
//  Created by Alexander Yakovenko on 12/21/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol ViewModelProtocol: class {
    func saveUserVM(name: String, lastName: String, age: Int)
}

class ViewModel: ViewModelProtocol {
    var user = User(name: "", lastName: "", age: 0)
    
    var worker: WorkerProtocol!
    
    
    func saveUserVM(name: String, lastName: String, age: Int) {
        user.name = name
        user.lastName = lastName
        user.age = age
        
        worker.saveUser(user: user)
    
    }
    
}
