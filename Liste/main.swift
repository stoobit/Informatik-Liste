//
//  main.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

let liste = Liste()

liste.vorneEinfügen(
    datenelement: Kunde(name: "Hans", id: "1234", kontostand: 200)
)
liste.vorneEinfügen(
    datenelement: Kunde(name: "Peter", id: "5678", kontostand: 3000)
)
liste.vorneEinfügen(
    datenelement: Kunde(name: "Jochen", id: "9123", kontostand: 1)
)

liste.einfügenNach(
    datenelement:Kunde(name: "Hans", id: "1234", kontostand: 200),
    neu: Kunde(name: "Paul", id: "0000", kontostand: 100)
)

liste.ausgeben()




