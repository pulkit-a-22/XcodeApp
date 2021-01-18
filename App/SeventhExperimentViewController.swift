//
//  SeventhExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class SeventhExperimentViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        opinion.text = Variables.opinion
        conclusion.text = Variables.conclusion
        opinion.delegate = self
        conclusion.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var opinion: UITextView!
    @IBOutlet weak var conclusion: UITextView!
    
    
    func textViewDidChange(_ textView: UITextView) {
        if textView == opinion {
            Variables.opinion = opinion.text
        }
        else if textView == conclusion {
            Variables.conclusion = conclusion.text
        }
        
    }
    
    
    
  
    
}
