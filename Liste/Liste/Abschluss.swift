//
//  Abscluss.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

class Abschluss: Listenelement {
    func ausgeben() { }
    
    func restlängeGeben() -> Int {
        return 0
    }
    
    func datenelementGeben() -> Datenelement? {
        nil
    }
    
    func endeGeben(listenelement: Listenelement) -> Datenelement? {
        return listenelement.datenelementGeben()
    }
    
    func endeEntfernen(d: Datenelement) -> Listenelement {
        return Abschluss()
    }
    
    func anfangEntfernen() -> (Listenelement, Datenelement?) {
        return (self, nil)
    }
    
    func entfernen(
        index: Int, aktuellerIndex: Int
    ) -> (Listenelement, Datenelement?) {
        return (self, nil)
    }
    
    func hintenEinfügen(datenelement: Datenelement) -> Listenelement {
        return Knoten(nachfolger: self, datenelement: datenelement)
    }
    
    func suchen(suchbegriff: String, suchergebnisse: Liste) { }
    
    func gesamtsummeGeben() -> Double {
        return 0.0
    }
    
    func höchstenKontostandGeben() -> Double {
        return 0
    }
    
    func listeBereinigen(kontoständeUnter: Double) -> Listenelement {
        return self
    }
}
