//
//  NinthExperimentViewController.swift
//  App
//
//  Created by Pulkit Agarwal on 9/20/20.
//  Copyright © 2020 Pulkit Agarwal. All rights reserved.
//

import UIKit
import SimplePDF
import Macaw


class NinthExperimentViewController: UIViewController {
    
    /// Creating UIDocumentInteractionController instance.
    let documentInteractionController = UIDocumentInteractionController()
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        documentInteractionController.delegate = self
        
        
        func image(with view: UIView) -> UIImage? {
               UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
               defer { UIGraphicsEndImageContext()}
               if let context = UIGraphicsGetCurrentContext() {
                   view.layer.render(in: context)
                   let image = UIGraphicsGetImageFromCurrentImageContext()
                   return image
               }
               return nil
           }
           

        
//        let A4paperSize = CGSize(width: 595, height: 842)
//        let pdf = SimplePDF(pageSize: A4paperSize, pageMargin: 20.0)
//        _ = SimplePDF(pageSize: A4paperSize, pageMarginLeft: 35, pageMarginTop: 50, pageMarginBottom: 40, pageMarginRight: 35)
        
        let a4PaperSize = CGSize(width: 595, height: 842)
        let pdf = SimplePDF(pageSize: a4PaperSize)
        
        pdf.addText(Variables.question)
        pdf.addLineSpace(30)
        
        pdf.addText(Variables.observation + " " + Variables.research)
        pdf.addLineSpace(30)
        
        
        

        pdf.addText(Variables.hypothesis + " To test this hypothesis, the " + Variables.independant + " was manipulated, and the " + Variables.dependant + " was measured. " + Variables.control + " " + Variables.procedure)
        pdf.addLineSpace(30)
        pdf.addText(Variables.conclusion)
        pdf.addLineSpace(30)
        
        pdf.addText(Variables.opinion + " " + Variables.revised + " " + Variables.error)
        pdf.addLineSpace(10)
        
        


        


      // ************* USE THIS TO SAVE FILE TO MOBILE APPLICATION *************** //
            var documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let pathString = "example.pdf"
            documentsURL.appendPathComponent(pathString)
   
        //  ************** END ************** //
        
            let pdfData = pdf.generatePDFdata()
            do{
                try pdfData.write(to: documentsURL, options: .atomic) // saves the file to location
            }catch{
                print(error)
            }
}
    
    @IBAction func showOptions(_ sender: Any) { // share file
        
        // *************** USE THIS TO READ FILE FROM SAVED LOCATION **************** //
        var appDirectoryPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        appDirectoryPath = appDirectoryPath?.appendingPathComponent("example.pdf")
      
        if let directoryPath = appDirectoryPath { // Unwrap the optional value
        
        let filePath = directoryPath.path
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: filePath) {
                share(url: directoryPath)
            }
            else{
               // file not availble
            }
        }
        
        // ************* END *****************
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    }

    extension NinthExperimentViewController {
        /// This function will set all the required properties, and then provide a preview for the document
        func share(url: URL) {
            documentInteractionController.url = url
            documentInteractionController.uti = url.typeIdentifier ?? "public.data, public.content"
            documentInteractionController.name = url.localizedName ?? url.lastPathComponent
            documentInteractionController.presentPreview(animated: true)
        }
        
        /// This function will store your document to some temporary URL and then provide sharing, copying, printing, saving options to the user
//        func storeAndShare(fileURLWithPath: String) {
//            guard let url = URL(string: fileURLWithPath) else { return }
//            print(url)
//            /// START YOUR ACTIVITY INDICATOR HERE
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                guard let data = data, error == nil else { return }
//                let tmpURL = FileManager.default.temporaryDirectory
//                    .appendingPathComponent(response?.suggestedFilename ?? "fileName.png")
//                do {
//                    try data.write(to: tmpURL)
//                } catch {
//                    print(error)
//                }
//                DispatchQueue.main.async {
//                    /// STOP YOUR ACTIVITY INDICATOR HERE
//                    self.share(url: tmpURL)
//                }
//                }.resume()
//        }
    }

    extension NinthExperimentViewController: UIDocumentInteractionControllerDelegate {
        /// If presenting atop a navigation stack, provide the navigation controller in order to animate in a manner consistent with the rest of the platform
        func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController {
            guard let navVC = self.navigationController else {
                return self
            }
            return navVC
        }
    }

    extension URL {
        var typeIdentifier: String? {
            return (try? resourceValues(forKeys: [.typeIdentifierKey]))?.typeIdentifier
        }
        var localizedName: String? {
            return (try? resourceValues(forKeys: [.localizedNameKey]))?.localizedName
        }
    
        
        
        
    
 

}
