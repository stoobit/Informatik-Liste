//
//  Listenelemtent.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

protocol Listenelement {
    func ausgeben()
    
    func endeGeben(listenelement: Listenelement) -> Datenelement?
    
    func datenelementGeben() -> Datenelement?
    
    func suchen(suchbegriff: String, suchergebnisse: Liste)
    
    func restlängeGeben() -> Int
    
    func gesamtsummeGeben() -> Double
    
    func höchstenKontostandGeben() -> Double
    
    func anfangEntfernen() -> (Listenelement, Datenelement?)
    
    func endeEntfernen(d: Datenelement) -> Listenelement
    
    func entfernen(
        index: Int, aktuellerIndex: Int
    ) -> (Listenelement, Datenelement?)
    
    func hintenEinfügen(datenelement: Datenelement) -> Listenelement
    
    func listeBereinigen(kontoständeUnter: Double) -> Listenelement
    
    func einfügenNach(datenelement: Datenelement, neu: Datenelement)
    
    func sortiertEinfügen(datenelement: Datenelement) -> Listenelement
}
