//
//  testViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/29/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit
import SimplePDF

class testViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    

    @IBAction func downloadButtonPressed(_ sender: Any) {
            guard let url = URL(string: "https://www.tutorialspoint.com/swift/swift_tutorial.pdf") else { return }
            
            let urlSession = URLSession(configuration: .default, delegate: self, delegateQueue: OperationQueue())
            
            let downloadTask = urlSession.downloadTask(with: url)
            downloadTask.resume()
        }
    }


    extension testViewController:  URLSessionDownloadDelegate {
        func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
            print("downloadLocation:", location)
            // create destination URL with the original pdf name
            guard let url = downloadTask.originalRequest?.url else { return }
            let documentsPath = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]
            let destinationURL = documentsPath.appendingPathComponent(url.lastPathComponent)
            // delete original copy
            try? FileManager.default.removeItem(at: destinationURL)
            // copy from temp to Document
            do {
                try FileManager.default.copyItem(at: location, to: destinationURL)
                self.pdfURL = destinationURL
            } catch let error {
                print("Copy Error: \(error.localizedDescription)")
            }
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

}
