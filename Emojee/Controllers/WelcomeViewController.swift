//
//  ViewController.swift
//  Emojee
//
//  Created by Dannyyyyyyy Zhao on 3/25/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        signUpButton.layer.cornerRadius = 30
        signInButton.layer.cornerRadius = 30
    }

    @IBAction func SignUpButton(_ sender: UIButton) {
        
        //let secondVC = SecondViewController()
        //self.present(secondVC, animated: true, completion: nil)
        
        //self.performSegue(withIdentifier: "toSecondPage", sender: self)
    }
    
    @IBAction func LoginButton(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "toSecondPage", sender: self)
    
    }
    
}

