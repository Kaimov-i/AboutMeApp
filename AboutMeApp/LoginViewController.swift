//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Ilman on 21.04.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    var userName = "Alex"
    var userPassword = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        userNameTF.resignFirstResponder()
        userPasswordTF.resignFirstResponder()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == userName,
              userPasswordTF.text == userPassword
        else {
            let alert = UIAlertController(
                title: "Login or password is wrong",
                message: "Enter the correct login and password",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default){_ in
                self.userNameTF.text = ""
                self.userPasswordTF.text = ""
            })
            present(alert, animated: true)
            
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.greatingUser = userNameTF.text
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        let alert = UIAlertController(
            title: "Ooops \u{1F609}",
            message: "Your name is Alex",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        let alert = UIAlertController(
            title: "Ooops \u{1F609}",
            message: "Your password is 1",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}

