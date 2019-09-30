//
//  ViewControllerImprimir.swift
//  EL1
//
//  Created by DAMII on 9/29/19.
//  Copyright © 2019 DAMII. All rights reserved.
//

import UIKit

class ViewControllerImprimir: UIViewController {
    
    var NomRecibe: String = ""
    var DniRecibe: String = ""
    var SerRecibe: String = ""
    var csRecibe: String = ""
    var ciRecibe: String = ""
    var dpRecibe: String = ""
    var toRecibe: String = ""
    
    @IBOutlet weak var tfNom: UITextField!
    @IBOutlet weak var tfDni: UITextField!
    @IBOutlet weak var tfSer: UITextField!
    @IBOutlet weak var lbCS: UILabel!
    @IBOutlet weak var lbCI: UILabel!
    @IBOutlet weak var lbDP: UILabel!
    @IBOutlet weak var lbTO: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfNom.text! = NomRecibe
        tfDni.text! = DniRecibe
        tfSer.text! = SerRecibe
        lbCS.text! = csRecibe
        lbCI.text! = ciRecibe
        lbDP.text! = dpRecibe
        lbTO.text! = toRecibe
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
