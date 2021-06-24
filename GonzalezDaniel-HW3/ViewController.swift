//
//  ViewController.swift
//  Project: GonzalezDaniel-HW3
//  EID: Dg37584
//  Course: CS371L
//
//  Created by Daniel Gonzalez on 6/22/21.
//

import UIKit

protocol changingText {
    func modifyText(newText: String)
    func modifyColor(newColor: UIColor)
}

class ViewController: UIViewController, changingText {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var changeTextButton: UIButton!
    @IBOutlet weak var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Text goes here"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "textSegue",
           let nextVC = segue.destination as? TextChangeViewController {
            nextVC.delegate = self
            nextVC.prevText = textLabel.text
        }
        
        if segue.identifier == "colorSegue",
           let nextVC = segue.destination as? ColorChangeViewController {
            nextVC.delegate = self
        }
    }
    
    func modifyText(newText: String) {
        textLabel.text = newText
    }
    
    func modifyColor(newColor: UIColor) {
        textLabel.backgroundColor = newColor
    }
}

