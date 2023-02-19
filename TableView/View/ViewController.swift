//
//  ViewController.swift
//  TableView
//
//  Created by Dan Kolan on 2/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var bikeGeometryLogic = BikeGeometryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bikeGeometryLogic.geometries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = bikeGeometryLogic.geometries[indexPath.row].manufacturer
        content.secondaryText = bikeGeometryLogic.geometries[indexPath.row].model
        cell.contentConfiguration = content
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedTrail = bikeGeometryLogic.geometries[indexPath.row]
//            
//            if let viewController = storyboard?.instantiateViewController(identifier: "TrailViewController") as? TrailViewController {
//                viewController.trail = selectedTrail
//                navigationController?.pushViewController(viewController, animated: true)
//            }
//    }

}

