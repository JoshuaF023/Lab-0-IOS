//
//  ViewController.swift
//  introducestudent
//
//  Created by Joshua Frederick on 8/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"

    }
    
    @IBAction func introduceSelfDidTapped(_ sender:UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // A way to dismiss the box once it pops up
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
                // Passing this action to the alert controller so it can be dismissed
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

