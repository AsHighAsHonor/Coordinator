//
//  Reset2ViewController.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class Reset2ViewController: UIViewController {

    var doneHandler: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backTapped(_ sender: Any) {
    }
    
    @IBAction func resetTapped(_ sender: UIButton) {
        doneHandler?()
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
