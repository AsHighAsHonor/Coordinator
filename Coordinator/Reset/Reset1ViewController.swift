//
//  Reset1ViewController.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class Reset1ViewController: UIViewController {

    var  nextHandler : (() -> Void)?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backTapped(_ sender: Any) {
        
    }
    
    @IBAction func nextTapped(_ sender: UIButton) {
        nextHandler?()
    }

}
