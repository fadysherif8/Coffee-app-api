//
//  LogInViewController.swift
//  Coffee_app
//
//  Created by Fady Sherif on 17/06/2023.
//

import UIKit
import Alamofire

class LogInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var logInOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        logInOutlet.layer.cornerRadius = logInOutlet.frame.height/2
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        let data = [
            "email": emailField.text,
            "password": passwordField.text
        ]
        
        AF.request("https://reqres.in/api/login", method: .post, parameters: data).responseJSON { response in
            if response.value! as! [String : String] ==  ["token": "QpwL5tke4Pnpja7X4"] {
                self.performSegue(withIdentifier: K.Segues.menuVC, sender: self)
            } else {
                let alert = UIAlertController(title: "Alert", message: "User was not found", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }

    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: K.Segues.registerVC, sender: self)
    }
}
extension LogInViewController {
    
}
