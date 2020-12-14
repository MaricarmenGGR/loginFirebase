//
//  MenuPrincipalViewController.swift
//  cocoapodsexampleCLTypingLabel
//
//  Created by Catalina on 14/12/20.
//  Copyright © 2020 funcion. All rights reserved.
//

import UIKit
import FirebaseAuth

class MenuPrincipalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.hidesBackButton =  true
    }
    
    @IBAction func salirSesionButton(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
      print ("Error al cerrar sesion...", signOutError)
            
    }
      
        
    }
    
   

}
