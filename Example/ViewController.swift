//
//  ViewController.swift
//  Example
//
//  Created by Alexander Yakovenko on 12/21/17.
//  Copyright © 2017 Alexander Yakovenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    var viewModel: ViewModelProtocol!
    var router: RouterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Configurator.sharedInstance.configure(self)
        
        
    }

  
    @IBAction func loadFromUserDefault(_ sender: Any) {
        
        let userDefault = UserDefaults.standard
        let data = userDefault.object(forKey: "user")
        let user: User = NSKeyedUnarchiver.unarchiveObject(with: data as! Data) as! User
        print("User name: ", user.name)
        print("User last name: ", user.lastName)
        print("User age: ", user.age)
        
        router.goToGreenVC()
        //self.performSegue(withIdentifier: "Green", sender: nil)
        
    }
    @IBAction func saveUserButton(_ sender: Any) {
        
        guard let name = nameTextField.text else {
            return
        }
        guard let lastName = lastNameTextField.text else {
            return
        }
        guard let age = Int(ageTextField.text!) else {
            return
        }
        
        viewModel.saveUserVM(name: name, lastName: lastName, age: age)
        
    }
    
    @IBAction func goToYellowVC(_ sender: Any) {
        router.goToYellowVC()
        
    }
    
}

