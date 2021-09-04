//
//  ViewController.swift
//  visitante
//
//  Created by Alumno on 9/3/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var sldTemperatura: UISlider!
    @IBOutlet weak var lblTemperatura: UILabel!
    @IBOutlet weak var btnVisitante: UIButton!
    @IBOutlet weak var lblIngreso: UILabel!
    @IBOutlet weak var btnNuevo: UIButton!
    @IBOutlet weak var imgResultado: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgResultado.isHidden = true
        lblIngreso.isHidden = true
        btnNuevo.isHidden = true
        btnVisitante.isEnabled = true
        sldTemperatura.isEnabled = true
        
    }

    @IBAction func doChangeTemperature(_ sender: Any) {
        lblTemperatura.text = "\(String(format: "%.1f",sldTemperatura.value))°C"
        if sldTemperatura.value >= 38.0 {
            lblTemperatura.textColor = UIColor.red
        }
        else{
            lblTemperatura.textColor = UIColor.black
        }
    }
    
    @IBAction func doTapCapturar(_ sender: Any) {
        if sldTemperatura.value >= 38.0{
            imgResultado.image = UIImage(named: "delete")
            lblIngreso.text = "Ingreso NO autorizado para \(txtNombre.text!)"
        }
        else{
            imgResultado.image = UIImage(named: "check")
            lblIngreso.text = "Ingreso autorizado para \(txtNombre.text!)"
            
        }
        imgResultado.isHidden = false
        lblIngreso.isHidden = false
        btnNuevo.isHidden = false
        btnVisitante.isEnabled = false
        sldTemperatura.isEnabled = false
        sldTemperatura.tintColor = UIColor.darkGray
        txtNombre.isEnabled = false
    }
    
    
    @IBAction func doTapNuevo(_ sender: Any) {
        txtNombre.isEnabled = true
        imgResultado.isHidden = true
        lblIngreso.isHidden = true
        btnNuevo.isHidden = true
        btnVisitante.isEnabled = true
        sldTemperatura.isEnabled = true
        txtNombre.text = ""
    }
    
}

