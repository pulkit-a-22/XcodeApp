//
//  SecondExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class SecondExperimentViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        research.text = Variables.research
        research.delegate = self
        
    }
    
    
    @IBOutlet weak var research: UITextView!
    
    func textViewDidChange(_ textView: UITextView) {
        Variables.research = research.text
    }
  
    
}
