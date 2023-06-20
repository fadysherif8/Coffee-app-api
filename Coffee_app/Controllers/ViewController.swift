//
//  ViewController.swift
//  Coffee_app
//
//  Created by Fady Sherif on 15/06/2023.
//
import UIKit
import CLTypingLabel

class ViewController: UIViewController {
    var timer = Timer()
    @IBOutlet weak var label: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Coffee"
    }
    override func viewDidAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateScreen), userInfo: nil, repeats: false)
    }
    @objc func updateScreen() {
        self.performSegue(withIdentifier: K.Segues.logInVC, sender: self)
    }
}
