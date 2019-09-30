//
//  ViewController.swift
//  EL1
//
//  Created by DAMII on 9/29/19.
//  Copyright © 2019 DAMII. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ListaServicio.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        strServicioSeleccionado = ListaServicio[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ListaServicio[row]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pase" {
            let pase = segue.destination as! ViewControllerImprimir
            pase.NomRecibe = strNom+" "+strApe
            pase.DniRecibe = strDni
            pase.SerRecibe = strServicioSeleccionado
            pase.csRecibe=String(cs)
            pase.ciRecibe=String(ci)
            pase.dpRecibe=String(dp)
            pase.toRecibe=String(to)
            
        }
    }

    @IBOutlet weak var tfNombres: UITextField!
    @IBOutlet weak var tfApellidos: UITextField!
    @IBOutlet weak var tfDni: UITextField!
    @IBOutlet weak var pvServicio: UIPickerView!
    @IBOutlet weak var tfCServicio: UITextField!
    @IBOutlet weak var tfCInstalacion: UITextField!
    @IBOutlet weak var tfDescuento: UITextField!
    @IBOutlet weak var tfTotal: UITextField!
    @IBOutlet weak var btnCalcular: UIButton!
    @IBOutlet weak var btnImprimir: UIButton!
    
    var strNom: String = ""
    var strApe: String = ""
    var strDni: String = ""
    var strServicioSeleccionado: String = ""
    var ListaServicio = [String]()
    var cs: Double = 0
    var ci: Double = 0
    var dp: Double = 0
    var to: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ListaServicio=["Internet 60mb", "Internet 20mb","Internet Satelital 40mb"]
        strServicioSeleccionado="Internet 60mb"
        self.pvServicio.dataSource = self
        self.pvServicio.delegate = self
    }
    @IBAction func btnCalcular_click(_ sender: Any) {
        strNom = tfNombres.text!
        strApe = tfApellidos.text!
        strDni = tfDni.text!
        if strServicioSeleccionado=="Internet 60mb"{
            cs=229
            ci=20
            dp=(cs)*0.25
            to=cs+ci-dp
            
            tfCServicio.text! = String(cs)
            tfCInstalacion.text! = String(ci)
            tfDescuento.text! = String(dp)
            tfTotal.text! = String(to)
        }
        if strServicioSeleccionado=="Internet 20mb"{
            cs=100
            ci=20
            dp=(cs)*0.05
            to=cs+ci-dp
            
            tfCServicio.text! = String(cs)
            tfCInstalacion.text! = String(ci)
            tfDescuento.text! = String(dp)
            tfTotal.text! = String(to)
        }
        if strServicioSeleccionado=="Internet Satelital 40mb"{
            cs=180
            ci=30
            dp=(cs)*0.1
            to=cs+ci-dp
            
            tfCServicio.text! = String(cs)
            tfCInstalacion.text! = String(ci)
            tfDescuento.text! = String(dp)
            tfTotal.text! = String(to)
        }
    }
    

}

