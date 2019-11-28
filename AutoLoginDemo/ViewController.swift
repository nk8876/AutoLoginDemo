//
//  ViewController.swift
//  AutoLoginDemo
//
//  Created by Dheeraj Arora on 04/07/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    var email = "naresh1214@gmail.com"
    var pwd = "12345678"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false

    }
    
    @IBAction func btnLoginAction(_ sender: UIButton) {
        if email == txtEmail.text && pwd == txtPassword.text{
            UserDefaults.standard.set(txtEmail.text, forKey: "email")
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            self.navigationController!.pushViewController(vc, animated: true)
           
        }else{
            let alert = UIAlertController(title: "Alert", message: "email and password are incorrect", preferredStyle: UIAlertController.Style.alert)
            let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

