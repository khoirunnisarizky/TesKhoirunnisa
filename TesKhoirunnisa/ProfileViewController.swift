//
//  ProfileViewController.swift
//  Alodoc
//
//  Created by khoirunnisa' rizky noor fatimah on 31/10/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userGender: UILabel!
    @IBOutlet weak var userNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userPhoto.layer.cornerRadius = userPhoto.frame.size.width/2
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
