//
//  LearnViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit
import SafariServices


class LearnViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

// OPEN SAFARI
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
}
