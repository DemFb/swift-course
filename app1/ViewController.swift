//
//  ViewController.swift
//  app1
//
//  Created by Fabala Dembele on 07/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var labellogin: UILabel!
    @IBOutlet weak var labelpassword: UILabel!
    @IBOutlet weak var inputpassword: UITextField!
    @IBOutlet weak var buttonSubmit: UIButton!
    @IBOutlet weak var inputlogin: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submit(_ sender: Any) {
        
        if (self.inputpassword.text == "Toto" && self.inputlogin.text == "Toto") {
            self.photo.image = UIImage(named: "cadrage")
            self.labelpassword.textColor = UIColor.green
        }
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "second")
            as? SecondViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
        }
        }

