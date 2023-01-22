//
//  ViewController.swift
//  TestApp
//
//  Created by Oyatullo Koraboev on 22/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBOutlet weak var secondTextField: UITextField!
    
    @IBOutlet weak var thirdTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControll: UISegmentedControl!
    
    @IBOutlet weak var petNumberLabel: UILabel!
    
    
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        petNumberLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControll.titleForSegment(at: yearSegmentedControll.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        
        let introduction = "My name is \(firstTextField.text!) \(secondTextField.text!) and I attend \(thirdTextField.text!). I am currently in my \(year!) year and I own \(String(describing: petNumberLabel.text!)) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        
        print(introduction)
        
        let alertController = UIAlertController(title: "My introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you", style: .default,handler: nil)
        
        alertController.addAction(action)
        present(alertController, animated: true,completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

