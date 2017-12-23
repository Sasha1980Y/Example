//
//  Configurator.swift
//  Example
//
//  Created by Alexander Yakovenko on 12/21/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import Foundation

class Configurator {
    static let sharedInstance = Configurator()
    
    func configure(_ viewController: ViewController) {
        let worker = Worker()
        let viewModel = ViewModel()
        viewController.viewModel = viewModel
        viewModel.worker = worker
        
        let router = Router()
        router.viewController = viewController
        viewController.router = router
        
        
    }
}
