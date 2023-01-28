//
//  ResultVCViewController.swift
//  IBM
//
//  Created by Nick Khachatryan on 08.12.2020.
//

import UIKit

class ResultVCViewController: UIViewController {
    
    //  MARK: - OUTLETS
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    //  MARK: - CUSTOM PROPERTIES
    var resultBMI = ""
    var imgBMI : UIImage?
    
    
    //  MARK: - VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = resultBMI
        imageView.image = imgBMI
    }
    
    
    //  MARK: - ACTIONS
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
