//
//  UIComponentViewController.swift
//  Chapter2_Excercise
//
//  Created by Dhyana Dave on 29/04/22.
//

import UIKit

class UIComponentViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var btnTapMe: UIButton!
    @IBOutlet weak var uiSlider: UISlider!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var pbButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnTapMe.layer.cornerRadius = 8
    }
    
    @IBAction func ValueChangedSliderAction(_ sender: UISlider) {
        lblAge.text = "\(sender.value)"
    }
    
    
    @IBAction func btnProgressbar(_ sender: UIButton) {
            progressView.setProgress(1, animated: true)
    }
    
    @IBAction func plainButton(_ sender: UIButton) {
        print("It works")
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if let btnSizeClass = self.storyboard?.instantiateViewController(withIdentifier: "SecondComponentViewController") as? SecondComponentViewController {
            
                    self.navigationController?.pushViewController(btnSizeClass, animated: true)
        }
    }
}
