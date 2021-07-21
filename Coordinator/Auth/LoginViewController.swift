//
//  LoginViewController.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class LoginViewController: UIViewController {

    var resetHandler : (() -> Void)?
    var registerHandler : (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerTapped(_ sender: UIButton) {
        registerHandler?()
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
    }
    
    @IBAction func forgetTapped(_ sender: UIButton) {
        resetHandler?()
    }
    
}
