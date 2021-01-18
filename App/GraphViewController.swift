//
//  GraphViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/27/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {

  

    @IBOutlet weak var chartView: MacawChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chartView.contentMode = .scaleAspectFit
        MacawChartView.playAnimations()
        
    }
    
    
//    @IBAction func sendGraph(_ sender: Any) {
//        let image  = chartView.getImage()
//        Variables.image = image
//    }
    
    
   
}



//extension UIView {
//
//    var screenShot: UIImage?  {
//        UIGraphicsBeginImageContextWithOptions(bounds.size, false, 1.0);
//        if let _ = UIGraphicsGetCurrentContext() {
//            drawHierarchy(in: bounds, afterScreenUpdates: true)
//            let screenshot = UIGraphicsGetImageFromCurrentImageContext()
//            UIGraphicsEndImageContext()
//            return screenshot
//        }
//        return nil
//    }
//
//}
