//
//  PatientListViewController.swift
//  patientList
//
//  Created by Amit Gupta on 9/21/21.
//

import UIKit

class PatientListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        PatientData.initialize()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! PatientDetailViewController
        let i = tableView.indexPathForSelectedRow?.row
        detailVC.name = PatientData.patients[i!].name
        detailVC.diagnosis=PatientData.patients[i!].diagnosis
        detailVC.notes=PatientData.patients[i!].notes
        
        
    }
    


    
}

extension PatientListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PatientData.patients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let patient = PatientData.patients[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PatientCell") as! PatientCell
        cell.setPatient(patient: patient)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToPatientDetail", sender: self)
    }
    
    
}
