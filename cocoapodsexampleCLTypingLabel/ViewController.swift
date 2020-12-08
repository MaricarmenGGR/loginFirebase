//
//  ViewController.swift
//  cocoapodsexampleCLTypingLabel
//
//  Created by Mac17 on 07/12/20.
//  Copyright © 2020 funcion. All rights reserved.
//

import UIKit
import CLTypingLabel

class ViewController: UIViewController {

    @IBOutlet weak var texteBienvenida: CLTypingLabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        texteBienvenida.charInterval = 0.05
       texteBienvenida.text = "Hola ¿Como estas?"
    }


}

