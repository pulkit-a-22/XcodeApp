//
//  ThirdExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class ThirdExperimentViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        hypothesis.text = Variables.hypothesis
        hypothesis.delegate = self

    }
    
    
    @IBOutlet weak var hypothesis: UITextView!
    
   
    @IBAction func transferData(_ sender: Any) {
        Variables.hypothesis = hypothesis.text
    }
    
    func textViewDidChange(_ textView: UITextView) {
        Variables.hypothesis = hypothesis.text
    }
    
}
