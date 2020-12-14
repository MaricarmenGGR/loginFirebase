//
//  LoginViewController.swift
//  cocoapodsexampleCLTypingLabel
//
//  Created by Catalina on 08/12/20.
//  Copyright © 2020 funcion. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var contrasenaLabel: UITextField!
    @IBOutlet weak var correoLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func regitrarUsuarioButton(_ sender: UIButton) {
        
        if let email =  correoLabel.text, let password = contrasenaLabel.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error
            in
            
            guard let resultado = authResult, error == nil else {
                guard let error = error else{
                    return
                }
                if error.localizedDescription == "The email address is already in use by another account."{
                    //self.alertaUsuario(msg: "Datos Clonados")
                }
                //self.alertaUsuario(msg: "")
                print(error.localizedDescription)
                return
            }
            print("Usuario: \(resultado.user)")
            self.performSegue(withIdentifier: "loginUser", sender: self)
        }
    }
       
        
    }
    

}
