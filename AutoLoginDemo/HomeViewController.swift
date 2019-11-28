//
//  HomeViewController.swift
//  AutoLoginDemo
//
//  Created by Dheeraj Arora on 04/07/19.
//  Copyright © 2019 Dheeraj Arora. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(), style: .plain, target: nil, action: nil)
    }

    @IBAction func btnLogoutActioj(_ sender: UIBarButtonItem) {
        UserDefaults.standard.removeObject(forKey: "email")
        let vc = storyboard!.instantiateViewController(withIdentifier:"ViewController" )
        let navVC = UINavigationController(rootViewController: vc)
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.window?.rootViewController = navVC
        appDelegate?.window?.makeKeyAndVisible()
       
    }
    
}
