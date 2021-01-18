//
//  ChartViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/27/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UiViewController {
    
    
    @IBOutlet private var chartView: MacawChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chartView.contentMode = .scaleAspectFit
    }
    
    
}
