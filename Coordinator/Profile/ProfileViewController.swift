//
//  ProfileViewController.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class ProfileViewController: UIViewController {

    var logoutTappedHander: (() -> Void)?
    var resetTappedHander: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backTapped(_ sender: UIButton) {
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        resetTappedHander?()
    }
    @IBAction func logoutTapped(_ sender: Any) {
        logoutTappedHander?()
    }
    
}
