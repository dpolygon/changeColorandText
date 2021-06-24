//
//  ColorChangeViewController.swift
//  Project: GonzalezDaniel-HW3
//  EID: Dg37584
//  Course: CS371L
//
//  Created by Daniel Gonzalez on 6/22/21.
//

import UIKit

class ColorChangeViewController: UIViewController {
    
    var delegate: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func blueButtonPressed(_ sender: Any) {
        let otherVC = delegate as! changingText
        otherVC.modifyColor(newColor: UIColor.blue)
    }
    
    @IBAction func redButtonPressed(_ sender: Any) {
        let otherVC = delegate as! changingText
        otherVC.modifyColor(newColor: UIColor.red)
    }
}
