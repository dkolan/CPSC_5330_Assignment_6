//
//  BikeGeometry.swift
//  TableView
//
//  Created by Dan Kolan on 2/19/23.
//

import Foundation

struct BikeGeometry {
    init(_ mfct: String, _ mdl: String, _ sz: Int, _ stck: Double, _ rch: Double) {
        manufacturer = mfct
        model = mdl
        size = sz
        stack = stck
        reach = rch
    }
    
    var manufacturer: String
    var model: String
    var size: Int
    var stack: Double
    var reach: Double

}
