//
//  Knoten.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

class Knoten: Listenelement {
    var nachfolger: Listenelement
    var datenelement: Datenelement
    
    init(nachfolger: Listenelement, datenelement: Datenelement) {
        self.nachfolger = nachfolger
        self.datenelement = datenelement
    }
    
    func ausgeben() {
        print(datenelement.informationAusgeben())
        nachfolger.ausgeben()
    }
    
    func restlängeGeben() -> Int {
        return nachfolger.restlängeGeben() + 1
    }
    
    func endeGeben(listenelement: Listenelement) -> Datenelement? {
        return nachfolger.endeGeben(listenelement: self)
    }
    
    func anfangEntfernen() -> (Listenelement, Datenelement?) {
        return (nachfolger, self.datenelement)
    }
    
    func datenelementGeben() -> Datenelement? {
        return datenelement
    }
    
    func endeEntfernen(d: Datenelement) -> Listenelement {
        if d.informationAusgeben() == self.datenelement.informationAusgeben() {
            return nachfolger
        } else {
            nachfolger = nachfolger.endeEntfernen(d: d)
            return self
        }
    }
    
    func entfernen(
        index: Int, aktuellerIndex: Int
    ) -> (Listenelement, Datenelement?) {
        
        let result = nachfolger.entfernen(
            index: index, aktuellerIndex: aktuellerIndex + 1
        )
        
        self.nachfolger = result.0
        
        if index == aktuellerIndex {
            return (nachfolger, self.datenelement)
        } else {
            return (self, result.1)
        }
    }
    
    func hintenEinfügen(datenelement: Datenelement) -> Listenelement {
        nachfolger = nachfolger.hintenEinfügen(datenelement: datenelement)
        return self
    }
    
    func einfügenNach(datenelement: Datenelement, neu: Datenelement) {
        if datenelement.informationAusgeben() == self.datenelement.informationAusgeben() {
            
            nachfolger = Knoten(
                nachfolger: nachfolger, datenelement: neu
            )
        } else {
            nachfolger.einfügenNach(datenelement: datenelement, neu: neu)
        }
    }
    
    func suchen(suchbegriff: String, suchergebnisse: Liste) {
        if datenelement.informationAusgeben().contains(suchbegriff) {
            suchergebnisse.vorneEinfügen(datenelement: datenelement)
        }
        
        nachfolger.suchen(
            suchbegriff: suchbegriff,
            suchergebnisse: suchergebnisse
        )
    }
    
    func gesamtsummeGeben() -> Double {
        return self.datenelement.kontostandGeben() + nachfolger.gesamtsummeGeben()
    }
    
    func höchstenKontostandGeben() -> Double {
        let nachfolgerHöchsterKontostand = nachfolger.höchstenKontostandGeben()
        if nachfolgerHöchsterKontostand > self.datenelement.kontostandGeben() {
            return nachfolgerHöchsterKontostand
        } else {
            return self.datenelement.kontostandGeben()
        }
       
    }
    
    func listeBereinigen(kontoständeUnter: Double) -> Listenelement {
        nachfolger = nachfolger.listeBereinigen(
            kontoständeUnter: kontoständeUnter
        )
        
        if self.datenelement.kontostandGeben() < kontoständeUnter {
            return nachfolger
        } else {
            return self
        }
    }
}
