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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedTrail = bikeGeometryLogic.geometries[indexPath.row]
//        let destinationVC = BikeGeometryView()
//        destinationVC.stack = bikeGeometryLogic.geometries[indexPath.row].stack
//        destinationVC.reach = bikeGeometryLogic.geometries[indexPath.row].reach
//        destinationVC.performSegue(withIdentifier: "toBikeGeometryView", sender: self)
            
//        self.performSegue(withIdentifier: "toBikeGeometryView", sender: self)
        
//        let bikeData = bikeGeometryLogic.geometries[indexPath.row]
        self.performSegue(withIdentifier: "toBikeGeometryView", sender: indexPath)

    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "toBikeGeometryView") {
            let navigation = segue.destination as! BikeGeometryView
            let row = (sender as! IndexPath).row
            navigation.topTube = bikeGeometryLogic.geometries[row].topTube
            navigation.stack = bikeGeometryLogic.geometries[row].stack
            navigation.reach = bikeGeometryLogic.geometries[row].reach
        }
    }

}

