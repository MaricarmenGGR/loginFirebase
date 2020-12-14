//
//  RegistrarUsuariosViewController.swift
//  cocoapodsexampleCLTypingLabel
//
//  Created by Catalina on 08/12/20.
//  Copyright © 2020 funcion. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegistrarUsuariosViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    @IBOutlet weak var correoTextField: UITextField!
    @IBOutlet weak var contrasenaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func registrarButton(_ sender: UIButton) {
        
        if let email =  correoTextField.text, let password = contrasenaTextField.text {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error
            in
            
            guard let resultado = authResult, error == nil else {
                guard let error = error else{
                    return
                }
                if error.localizedDescription == "The email address is already in use by another account."{
                    self.alertaUsuario(msg: "Datos Clonados")
                }
                //self.alertaUsuario(msg: "")
                print(error.localizedDescription)
                return
            }
            print("Usuario: \(resultado.user)")
            self.performSegue(withIdentifier: "registroUsuario", sender: self)
        }
    }
          
}
    
    func alertaUsuario(msg: String){
        let alerta = UIAlertController(title: "UPS!", message: msg, preferredStyle: .alert)
        let accion = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(accion)
        present(alerta, animated: true, completion: nil)
    }
    
    
}
