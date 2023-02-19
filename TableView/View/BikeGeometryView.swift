//
//  BikeGeometryView.swift
//  TableView
//
//  Created by Dan Kolan on 2/19/23.
//

import UIKit

class BikeGeometryView: UIViewController {
    
    var stack : Double = 0
    var reach : Double = 0
    var topTube : Int = 0

    @IBOutlet weak var stackValue: UILabel!
    @IBOutlet weak var reachValue: UILabel!
    @IBOutlet weak var topTubeValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackValue.text = String(stack) + "mm"
        reachValue.text = String(reach) + "mm"
        topTubeValue.text = String(topTube) + "mm"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func closeModalBtn(_ sender: Any) {
        dismiss(animated: true)
    }
}
