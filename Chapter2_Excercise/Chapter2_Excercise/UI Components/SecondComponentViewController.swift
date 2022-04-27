//
//  SecondComponentViewController.swift
//  Chapter2_Excercise
//
//  Created by Dhyana Dave on 28/04/22.
//

import UIKit

class SecondComponentViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfEmail: UITextField!


    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        scrollView.integrateWithKeyboard()
        
        tfName.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self
    }

}

extension SecondComponentViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
           textField.resignFirstResponder()
           tfEmail.becomeFirstResponder()
        } else if textField == tfEmail {
           textField.resignFirstResponder()
           tfPassword.becomeFirstResponder()
        } else if textField == tfPassword {
           textField.resignFirstResponder()
        }
       return true
      }
}

extension UIView {
    var parentViewController: UIViewController? {

            var parentResponder: UIResponder? = self.next

            while parentResponder != nil {

                if let viewController = parentResponder as? UIViewController {

                    return viewController

                }

                parentResponder = parentResponder?.next

            }

            return nil

        }
}


