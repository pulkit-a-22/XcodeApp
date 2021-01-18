//
//  FirstExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class FirstExperimentViewController: UIViewController, UITextViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observationText.text = Variables.observation
        question.text = Variables.question
        observationText.delegate = self
        question.delegate = self
        
       
    }
    
    @IBOutlet weak var observationText: UITextView!
    @IBOutlet weak var question: UITextView!
    
    
    func textViewDidChange(_ textView: UITextView) {
        if textView == observationText {
            Variables.observation = observationText.text
        } else if textView == question {
            Variables.question = question.text
        }
    }
    
  
}


