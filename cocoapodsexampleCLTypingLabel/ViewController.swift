//
//  ViewController.swift
//  cocoapodsexampleCLTypingLabel
//
//  Created by Mac17 on 07/12/20.
//  Copyright © 2020 funcion. All rights reserved.
//

import UIKit
import CLTypingLabel
import FirebaseAuth
class ViewController: UIViewController {

    @IBOutlet weak var texteBienvenida: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        texteBienvenida.charInterval = 0.10
        texteBienvenida.text = "Hola ¿Como estas?"
        validarUserLogueado()
    }
    
    //Validando que el usuario este o no logueado
    
    func validarUserLogueado(){
        if FirebaseAuth.Auth.auth().currentUser != nil {
            //El usuario esta logueado
            performSegue(withIdentifier: "loginVerificado", sender: self)
        }
    }


}

