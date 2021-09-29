//
//  PatientData.swift
//  patientList
//
//  Created by Amit Gupta on 9/22/21.
//

import Foundation

class Patient {
    var name: String
    var diagnosis: String
    var notes: String
    
    init(name:String, diagnosis:String, notes:String) {
        self.name=name
        self.diagnosis=diagnosis
        self.notes=notes
    }
}


class PatientData {
    static public var patients: [Patient] = []
    
    
    static func createPatientList() -> [Patient] {
        var li:[Patient] = []
        li.append(Patient(name: "P1", diagnosis: "D1 diagnosis diagnosis diagnosis diagnosis diagnosis diagnosis", notes: "N1  notes notes notes notes notes notes notes notes notes notes notes notes notes notes notes"))
        li.append(Patient(name: "P2", diagnosis: "D2 diagnosis diagnosis diagnosis diagnosis diagnosis diagnosis", notes: "N2 notes notes notes notes notes notes notes notes notes notes notes notes notes notes notes"))
        li.append(Patient(name: "P3", diagnosis: "D3 diagnosis diagnosis diagnosis diagnosis diagnosis diagnosis", notes: "N3"))
        li.append(Patient(name: "P4", diagnosis: "D4", notes: "N4 notes notes notes notes notes notes notes notes notes notes notes notes notes notes notes"))
        li.append(Patient(name: "P5", diagnosis: "D5", notes: "N5 notes notes notes notes notes notes notes notes notes notes notes notes notes notes notes"))
        return li
    }
    
    static func initialize() {
        patients=createPatientList()
    }
    
    static func updateNotes(name: String, notes:String) {
        print("Starting match for \(name) to update notes to \(notes)")
        for p in patients {
            if p.name==name {
                print("Matched")
                p.notes=notes
            } else {
                print("Not matched")
            }
        }
    }
    
}
