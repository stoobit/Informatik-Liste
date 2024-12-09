//
//  main.swift
//  Liste
//
//  Created by Till Brügmann on 20.11.24.
//

import Foundation

let liste = Liste()

liste.sortiertEinfügen(
    datenelement: Kunde(name: "B", id: "1234", kontostand: 200)
)
liste.sortiertEinfügen(
    datenelement: Kunde(name: "C", id: "5678", kontostand: 3000)
)
liste.sortiertEinfügen(
    datenelement: Kunde(name: "E", id: "9123", kontostand: 1)
)

liste.sortiertEinfügen(
    datenelement: Kunde(name: "A", id: "0000", kontostand: 0)
)

print(liste.höchstenKontostandGeben())

liste.ausgeben()




