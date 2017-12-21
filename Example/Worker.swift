//
//  Worker.swift
//  Example
//
//  Created by Alexander Yakovenko on 12/21/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation
protocol WorkerProtocol {
    func saveUser(user: User)
}

class Worker: WorkerProtocol {
    func saveUser(user: User) {
        let userDefaults = UserDefaults.standard
        let encodedData: Data = NSKeyedArchiver.archivedData(withRootObject: user)
        userDefaults.set(encodedData, forKey: "user")
        
    }
}

