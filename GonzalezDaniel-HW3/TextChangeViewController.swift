//
//  TextChangeViewController.swift
//  Project: GonzalezDaniel-HW3
//  EID: Dg37584
//  Course: CS371L
//
//  Created by Daniel Gonzalez on 6/22/21.
//

import UIKit

class TextChangeViewController: UIViewController {
    
    var delegate: UIViewController!
    var prevText: String!
    @IBOutlet weak var newTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newTextField.text = prevText
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let otherVC = delegate as! changingText
        otherVC.modifyText(newText: newTextField.text!)
    }
}
