//
//  creditsViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 10/12/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class creditsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = Timer.scheduledTimer(timeInterval: 8.0, target: self, selector: #selector(segueToSignIn), userInfo: nil, repeats: false)

    }
    
   @objc func segueToSignIn() {
        self.performSegue(withIdentifier: "SignInSegue", sender: self)
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
