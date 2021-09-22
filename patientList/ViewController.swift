//
//  ViewController.swift
//  patientList
//
//  Created by Amit Gupta on 9/21/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonPatient: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "ToPatientView", sender: self)
    }
    
}

