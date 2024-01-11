//
//  ViewController.swift
//  UnitTestExample
//
//  Created by Perennials on 11/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak  var password: UITextField!
    @IBOutlet weak var login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: UIButton) {
        if let nameVal = userName.text, let passwordVal = password.text {
            
            if validateLoginCredentials(userName: nameVal, password: passwordVal) == true {
                
            }
        }
        
    }
    
    func validateLoginCredentials(userName: String, password: String) -> Bool {
        if userName == "" || password == "" {
            //show an alert
            self.showAlert(message: "All fields are mandatory")
            return false
        }
        if userName.count < 3 {
            self.showAlert(message: "Name should be more than 3 characters")
            return false
        }
        return true

    }
    func showAlert(message:String) {
//        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
//        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
//        self.present(alert, animated: true, completion: nil)
        
        let alert = UIAlertController(title: "Alert" , message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok" , style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}
