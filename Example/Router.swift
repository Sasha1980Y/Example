//
//  Router.swift
//  Example
//
//  Created by Alexander Yakovenko on 12/21/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

protocol RouterProtocol: class {
    func goToGreenVC()
    func goToYellowVC() 
}

class Router: RouterProtocol {
   
    weak var viewController: ViewController!
    
    func goToGreenVC() {
        viewController.performSegue(withIdentifier: "Green", sender: nil)
        
    }
    func goToYellowVC() {
        viewController.performSegue(withIdentifier: "Yellow", sender: nil)
    }
    
}
