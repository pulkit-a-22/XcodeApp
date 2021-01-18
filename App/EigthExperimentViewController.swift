//
//  EigthExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class EigthExperimentViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        revised.delegate = self
        error.delegate = self
        fresearch.delegate = self
        revised.text = Variables.revised
        error.text = Variables.error
        fresearch.text = Variables.fresearch

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var revised: UITextView!
    @IBOutlet weak var error: UITextView!
    @IBOutlet weak var fresearch: UITextView!
    
    func textViewDidChange(_ textView: UITextView) {
        if textView == revised {
            Variables.revised = revised.text
        }
        else if textView == error {
            Variables.error = error.text
        }
        else if textView == fresearch {
            Variables.fresearch = fresearch.text
        }
    }
    
    
    
}
