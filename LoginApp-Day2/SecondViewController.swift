//
//  SecondViewController.swift
//  LoginApp-Day2
//
//  Created by MIT App Dev on 10/21/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var iblUsernmae: UILabel!
    var username : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        iblUsernmae.text = username
        // Do any additional setup after loading the view.
    }

    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
