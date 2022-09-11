//
//  SecondViewController.swift
//  PatikaOdev1
//
//  Created by Batuhan Atabek on 8.09.2022.
//

import UIKit

class SecondViewController: UIViewController , ViewControllerDelegate {
    
    @IBOutlet weak var carTypeLabel: UILabel!
    @IBOutlet weak var carColorLabel: UILabel!
    @IBOutlet weak var carModelYearLabel: UILabel!
    @IBOutlet weak var carModelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondController" {
            let firstVC : ViewController = segue.destination as! ViewController
            firstVC.delegate = self
        }
    }
    
    func didTapButton(item: CarModel) {
        carModelLabel.text = "Modeli " + item.carModelYear!
        carTypeLabel.text = "Kasa Tipi " + item.carType!
        carColorLabel.text = "Rengi " + item.carColor!
        carModelYearLabel.text = "Model Yılı " + item.carModelName!
    }
    
    @IBAction func insertData(_ sender: Any) {
        performSegue(withIdentifier: "toSecondController", sender: nil)
    }

}
