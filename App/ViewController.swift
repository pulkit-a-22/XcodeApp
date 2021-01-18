//
//  ViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 //OPEN SAFARI ON LEARN PAGE
    @IBAction func openSafari(_ sender: Any) {
        showSafariVC(for: "https://www.erlot.org/post/the-scientific-method-and-applying-it")
    }
    
    func showSafariVC(for url: String) {
           guard let url = URL(string: url) else {
               //Show invalid URL error alert
               return
           }
           let safariVC = SFSafariViewController(url: url)
           present(safariVC, animated: true)
       }
       
//CLOSE POPUP ON EXPERIMENT 1
    
    @IBAction func closePopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    @IBAction func closePopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }

//COSE POPUP ON EXPERIMET 2

    @IBAction func close2PopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
//CLOSE POPUP ON EXPERIMENT 3
    
    @IBAction func close3PopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }

//CLOSE POPUP ON EXPERIMENT 4
    
    @IBAction func close4PopUp1(_ sender: Any) {
        self.view.removeFromSuperview()

    }
    @IBAction func close4PopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    @IBAction func close4PopUp3(_ sender: Any) {
        self.view.removeFromSuperview()

    }
    @IBAction func close4PopUp4(_ sender: Any) {
        self.view.removeFromSuperview()

    }
    @IBAction func close4PopUp5(_ sender: Any) {
        self.view.removeFromSuperview()

    }
    
// CLOSE POP UP ON EXPERIMENT 5
    
    @IBAction func close5PopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    @IBAction func close5PopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
// CLOSE POP UP ON EXPERIMENT 6
    
    @IBAction func close6PopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }

// CLOSE POP UP ON EXPERIMENT 7
    
    @IBAction func close7PopUp1(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    @IBAction func close7PopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }

// CLOSE POP UP ON EXPERIMENT 8
    
    
    
    
}




