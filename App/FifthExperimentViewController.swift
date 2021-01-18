//
//  FifthExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class FifthExperimentViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        control.text = Variables.control
        procedure.text = Variables.procedure
        control.delegate = self
        procedure.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var control: UITextView!
    @IBOutlet weak var procedure: UITextView!
    
    func textViewDidChange(_ textView: UITextView) {
        if textView == control {
            Variables.control = control.text
        }
        if textView == procedure {
            Variables.procedure = procedure.text
        }
    }
    
    
        
    
}
