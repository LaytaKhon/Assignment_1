//
//  ViewController.swift
//  LoginApp-Day2
//
//  Created by MIT App Dev on 10/21/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfUsername: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnLogin.addTarget(self, action: #selector(onClickLogin), for: .touchUpInside)
        btnRegister.addTarget(self, action: #selector(onClickRegister), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func onClickLogin(){
        let username = tfUsername.text! // let => constant declaration
        let password = tfPassword.text!
        print("\(username) and \(password)") // log
        if username.elementsEqual("admin") && password.elementsEqual("123"){
           // performSegue(withIdentifier: Constants.SegueId.LOGIN_SEGUE, sender: username)
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! UINavigationController
            let vc = navigationController.viewControllers[0] as! SecondViewController
            vc.username = username
            self.present(navigationController, animated: true, completion: nil)
            
        }
    }
    
    @objc func onClickRegister(){
        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! UINavigationController
        self.present(navigationController, animated: true, completion: nil)
    }
    
    /* For segue sender */
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == Constants.SegueId.LOGIN_SEGUE {
//           let vc = segue.destination as! SecondViewController
//            vc.username = sender as? String
//        }
//    }


}

