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

liste.hintenEinfügen(
    datenelement: Kunde(name: "James", id: "8888", kontostand: 4)
)

liste.listeBereinigen(kontoständeUnter: 5)

liste.ausgeben()




