//
//  PatientDetailViewController.swift
//  patientList
//
//  Created by Amit Gupta on 9/21/21.
//

import UIKit

class PatientDetailViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    
    @IBOutlet weak var patientName: UILabel!
    
    @IBOutlet weak var patientDiagnosis: UILabel!
    
    @IBOutlet weak var patientNotes: UILabel!
    
    
    var name:String?
    var diagnosis:String?
    var notes:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        patientName.text=name ?? "Unknown"
        patientDiagnosis.text = diagnosis ?? ""
        patientNotes.text = notes ?? ""
        //print("About to show patient with name \(name) diagnosis \(diagnosis) notes \(notes) ")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
