//
//  RegisterViewController.swift
//  Emojee
//
//  Created by Dannyyyyyyy Zhao on 3/30/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
        
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerButton.layer.cornerRadius = 20
        emailTextfield.layer.cornerRadius = 10
        passwordTextfield.layer.cornerRadius = 10
    }
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
                Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                    if let e = error {
                        print(e.localizedDescription)
                    } else {
                        // navigate to the EmojeeViewContrller
                        self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                    }
                }
        }
    }
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


//extension UIViewController {
//    class func loadFromNib() -> Self {
//        return self.init(nibName: String(describing: self), bundle: nil)
//    }
//}




