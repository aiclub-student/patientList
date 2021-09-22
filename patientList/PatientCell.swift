//
//  PatientCell.swift
//  patientList
//
//  Created by Amit Gupta on 9/21/21.
//

import Foundation
import UIKit

class PatientCell: UITableViewCell {
    
    @IBOutlet weak var patientName: UILabel!
    
    @IBOutlet weak var diagnosis: UILabel!
    var patient:Patient!
    
    
    func setPatient(patient: Patient) {
        patientName.text = patient.name
        diagnosis.text = patient.diagnosis
        self.patient = patient
    }

}


