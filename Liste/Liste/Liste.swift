//
//  Liste.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

class Liste {
    var anfang: Listenelement = Abschluss()
    
    func ausgeben() {
        anfang.ausgeben()
    }
    
    func längeGeben() -> Int {
        anfang.restlängeGeben()
    }
    
    func vorneEinfügen(datenelement: Datenelement) {
        let knoten = Knoten(nachfolger: anfang, datenelement: datenelement)
        anfang = knoten
    }
    
    func hintenEinfügen(datenelement: Datenelement) {
        anfang = anfang.hintenEinfügen(datenelement: datenelement)
    }
    
    func endeEntfernen() -> Datenelement? {
        guard let datenelement = anfang.endeGeben(listenelement: anfang) else {
            return nil
        }
        
        anfang = anfang.endeEntfernen(d: datenelement)
        return datenelement
    }
    
    func anfangEntfernen() -> Datenelement? {
        let result = anfang.anfangEntfernen()
        anfang = result.0
        
        return result.1
    }
    
    func entfernen(index: Int) -> Datenelement? {
        let result = anfang.entfernen(
            index: index, aktuellerIndex: 1
        )
        
        anfang = result.0
        return result.1
    }
    
    func suchen(suchbegriff: String) -> Liste {
        let suchergebnisse = Liste()
        
        anfang.suchen(
            suchbegriff: suchbegriff,
            suchergebnisse: suchergebnisse
        )
        
        return suchergebnisse
    }
    
    func gesamtsummeGeben() -> Double {
        return anfang.gesamtsummeGeben()
    }
    
    func durchschnittGeben() -> Double {
        let anzahl = Double(längeGeben())
        let gesamtsumme = gesamtsummeGeben()
        
        return gesamtsumme / anzahl
    }
    
    func höchstenKontostandGeben() -> Double {
        return anfang.höchstenKontostandGeben()
    }
    
    func listeBereinigen(kontoständeUnter: Double) {
        anfang = anfang.listeBereinigen(kontoständeUnter: kontoständeUnter)
    }
}
