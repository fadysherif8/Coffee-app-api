//
//  RegisterViewController.swift
//  Coffee_app
//
//  Created by Fady Sherif on 17/06/2023.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var rePassField: UITextField!
    
    @IBOutlet weak var registerOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        registerOutlet.layer.cornerRadius = registerOutlet.frame.height/2
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        let data: [String:String?] = [
            "email": emailField.text,
            "password": passField.text
        ]
        if passField.text == rePassField.text {
            ApiManager().registerUser(data: data)
        } else {
            let alert = UIAlertController(title: "Alert", message: "Password and Repeated password don't match", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
