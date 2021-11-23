//
//  ViewController.swift
//  my first app
//
//  Created by Арсений Кухарев on 17.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLight.alpha = 0.5
        buttonOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func pressAction(_ sender: Any) {
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        redLight.clipsToBounds = true
    }
    
    

    
}

