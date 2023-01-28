//
//  ViewController.swift
//  IBM
//
//  Created by Nick Khachatryan on 04.12.2020.
//

import UIKit


class FirstViewController: UIViewController {
    
    
    //  MARK: - OUTLETS
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heighLabel: UILabel!
    @IBOutlet weak var heighSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    //  MARK: - CUSTOM PROPERTIES
    var bmiBrain = BMIBrain()

    
    //  MARK: - VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    //  MARK: - ACTIONS
    @IBAction func pressCalculate(_ sender: UIButton) {
        let weightValue = weightSlider.value
        let heightValue = heighSlider.value
        bmiBrain.getBMI(weight: weightValue, height: heightValue)
        performSegue(withIdentifier: "toResultVC", sender: self)
    }
    
    @IBAction func heighSlider(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", sender.value)
        heighLabel.text = heightValue + " m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weightValue = String(format: "%.0f", sender.value)
        weightLabel.text = weightValue + " kg"
    }
    
    
    //  MARK: - FUNCTIONS
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC"{
            let resultVC = segue.destination as! ResultVCViewController
            resultVC.resultBMI = bmiBrain.sendBMI()
            resultVC.imgBMI = bmiBrain.sendImage()
        }
    }
    
    func setUI(){
        heighSlider.value = 1.65
        weightSlider.value = 65
        heighLabel.text = "\(String(format: "%.2f", heighSlider.value)) m"
        weightLabel.text = "\(String(format: "%.0f", weightSlider.value)) kg"
    }
}

