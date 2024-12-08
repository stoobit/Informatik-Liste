//
//  Patient.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

class Kunde: Datenelement {
    var name: String
    var id: String
    
    var kontostand: Double = 0.0
    
    init(name: String, id: String, kontostand: Double) {
        self.name = name
        self.id = id
        self.kontostand = kontostand
    }
    
    func kontostandGeben() -> Double {
        return kontostand
    }
    
    func informationAusgeben() -> String {
        return "\(id), \(name), \(kontostand)"
    }
}
