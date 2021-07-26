//
//  GoThrough1ViewController.swift
//  Coordinator
//
//  Created by YYang1 on 15/7/21.
//

import UIKit

class GoThrough1ViewController: UIViewController {

    var goToNextTapHandler: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToNextTapped(_ sender: UIButton) {
        goToNextTapHandler?()
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
