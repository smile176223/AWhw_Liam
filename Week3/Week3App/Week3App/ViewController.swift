//
//  ViewController.swift
//  Week3App
//
//  Created by Hao on 2022/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControlSet()
        checkLabelSet()
    }

    @IBAction func segmentedChange(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0 {
            checkLabel.textColor = UIColor.gray
            checkText.isEnabled = false
            checkText.backgroundColor = UIColor.gray
            checkText.text = ""
            accountText.text = ""
            passwordText.text = ""
        }else {
            checkLabel.textColor = UIColor.black
            checkText.isEnabled = true
            checkText.backgroundColor = UIColor.white
            checkText.text = ""
            accountText.text = ""
            passwordText.text = ""
        }
    }
    @IBAction func clickButton(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0{
            if accountText.text == "appworks_school@gmail.com" , passwordText.text == "1234" {
                successAlert("log in!")
            }else if accountText.text == "" , passwordText.text == "" {
                errorAlert("Account Password should not be empty!")
            }else if accountText.text == "" {
                errorAlert("Account should not be empty!")
            }else if passwordText.text == "" {
                errorAlert("Password should not be empty!")
            }else{
                errorAlert("Login fail!")
            }
        }else if segmentedControl.selectedSegmentIndex == 1 {
            if accountText.text == "" , passwordText.text == "", checkText.text == "" {
                errorAlert("Account Password Check should not be empty!")
            }else if accountText.text == "" , passwordText.text == ""{
                errorAlert("Account Password should not be empty!")
            }else if passwordText.text == "", checkText.text == "" {
                errorAlert("Password Check should not be empty!")
            }else if accountText.text == "" , checkText.text == "" {
                errorAlert("Account Check should not be empty!")
            }else if accountText.text == ""{
                errorAlert("Account should not be empty!")
            }else if passwordText.text == ""{
                errorAlert("Password should not be empty!")
            }else if checkText.text == ""{
                errorAlert("Check should not be empty!")
            }else if passwordText.text != checkText.text {
                errorAlert("Signup fail!")
            }else {
                successAlert("Sign up!")
            }
        }
            
    }
    
    func errorAlert(_ message : String) {
        let alert = UIAlertController(title: "Error", message: message , preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: { action in
            
        })
        alert.addAction(action)
        present(alert, animated:  true)
        
    }
    
    func successAlert(_ message : String) {
        let alert = UIAlertController(title: "Success", message: message , preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: { action in
            
        })
        alert.addAction(action)
        present(alert, animated:  true)
    }
    
    func segmentedControlSet() {
        segmentedControl.backgroundColor = UIColor.white
        segmentedControl.layer.borderColor = UIColor.black.cgColor
        segmentedControl.selectedSegmentTintColor = UIColor.black
        segmentedControl.layer.borderWidth = 1
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        segmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.white]
        segmentedControl.setTitleTextAttributes(titleTextAttributes1, for: .selected)
    }
    
    func checkLabelSet() {
        checkLabel.textColor = UIColor.gray
        checkText.isEnabled = false
        checkText.backgroundColor = UIColor.gray
    }


}


extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
