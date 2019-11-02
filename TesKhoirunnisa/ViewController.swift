//
//  ViewController.swift
//  TesKhoirunnisa
//
//  Created by khoirunnisa' rizky noor fatimah on 02/11/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailUser: UITextField!
    @IBOutlet weak var passwordUser: UITextField!
    @IBOutlet weak var masukButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        masukButtonOutlet.isEnabled = false
               
        emailUser.delegate = self
        passwordUser.delegate = self
    }

    @IBAction func masukButton(_ sender: Any) {
        performSegue(withIdentifier: "masukPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "masukPage" {
                if let navigasi = segue.destination as? UITabBarController {
                    if let viewController = navigasi.selectedViewController as? HomeViewController {
                        viewController.indeks = 0
                    }
                }
            }
        }

    func textFieldDidEndEditing(_ textField: UITextField) {
        if emailUser.text?.isEmpty == false {
            if passwordUser.text?.isEmpty == false {
            masukButtonOutlet.isEnabled = true
            } else {
            masukButtonOutlet.isEnabled = false
            }
        }
    }
}

