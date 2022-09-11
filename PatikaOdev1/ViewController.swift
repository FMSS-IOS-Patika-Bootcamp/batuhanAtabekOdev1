//
//  ViewController.swift
//  PatikaOdev1
//
//  Created by Batuhan Atabek on 8.09.2022.
//

import UIKit

protocol ViewControllerDelegate : AnyObject{
    func didTapButton(item:CarModel)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var carTypeTextField: UITextField!
    @IBOutlet weak var carColorTextField: UITextField!
    @IBOutlet weak var carModelTextField: UITextField!
    @IBOutlet weak var carIdTextField: UITextField!
    
    weak var delegate : ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didPassData(_ sender: Any) {
        
        delegate?.didTapButton(item: CarModel(carModelYear: carIdTextField.text,
                                              carModelName: carModelTextField.text,
                                              carColor: carColorTextField.text,
                                              carType: carTypeTextField.text))
        dismiss(animated: true)
    }
    
}

