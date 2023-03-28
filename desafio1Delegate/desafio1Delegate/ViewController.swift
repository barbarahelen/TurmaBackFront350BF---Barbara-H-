//
//  ViewController.swift
//  desafio1Delegate
//
//  Created by Barbara Silva on 2023-03-22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.placeholder = "Digite seu nome"
        addressTextField.placeholder = "Digite seu endereço"
        passwordTextField.placeholder = "Digite sua senha"
        nameTextField.delegate = self
        addressTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
}
    extension ViewController: UITextFieldDelegate {
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            if textField.hasText == true 
        }
        
}
