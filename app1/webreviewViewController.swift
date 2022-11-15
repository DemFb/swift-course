//
//  viewControllerViewController.swift
//  app1
//
//  Created by Fabala Dembele on 08/11/2022.
//

import UIKit
import WebKit
class webreviewViewController: UIViewController {
    

    var linkbrowser = "http://www.yahoo.com"
    
    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "webreview"
        
        self.reloadWebView(text: self.linkbrowser)
        self.textfield.text = self.linkbrowser
        

        // Do any additional setup after loading the view.
    }
    
    func reloadWebView(text: String) {
        let url = URL(string: text)!
        let request = URLRequest(url: url)
        self.webview.load(request)
    }
       
    @IBAction func GoAction(_ sender: Any) {
        self.reloadWebView(text: self.textfield.text!)
    }
    
    @IBAction func closeTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
