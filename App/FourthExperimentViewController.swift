//
//  FourthExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class FourthExperimentViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        independant.delegate = self
        independantUnits.delegate = self
        dependant.delegate = self
        dependantUnits.delegate = self
        trials.delegate = self
        
        independant.text = Variables.independant
        independantUnits.text = Variables.independantUnits
        dependant.text = Variables.dependant
        dependantUnits.text = Variables.dependantUnits
        trials.text = Variables.trials

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var independant: UITextView!
    @IBOutlet weak var independantUnits: UITextView!
    @IBOutlet weak var dependant: UITextView!
    @IBOutlet weak var dependantUnits: UITextView!
    @IBOutlet weak var trials: UITextView!
    
    func textViewDidChange(_ textView: UITextView) {
        if textView == independant {
            Variables.independant = independant.text
        }
        else if textView == independantUnits {
            Variables.independantUnits = independantUnits.text
        }
        else if textView == dependant {
            Variables.dependant = dependant.text
        }
        else if textView == dependantUnits {
            Variables.dependantUnits = dependantUnits.text
        }
        else if textView == trials {
            Variables.trials = trials.text
        }
    }
    
    
    
}
