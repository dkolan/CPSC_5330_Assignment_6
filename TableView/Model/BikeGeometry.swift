//
//  BikeGeometry.swift
//  TableView
//
//  Created by Dan Kolan on 2/19/23.
//

import Foundation

struct BikeGeometry {
    init(_ mfct: String, _ mdl: String, _ tt: Int, _ stck: Double, _ rch: Double) {
        manufacturer = mfct
        model = mdl
        topTube = tt
        stack = stck
        reach = rch
    }
    
    var manufacturer: String
    var model: String
    var topTube: Int
    var stack: Double
    var reach: Double

}
