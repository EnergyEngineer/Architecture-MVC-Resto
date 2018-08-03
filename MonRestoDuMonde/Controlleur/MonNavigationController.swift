//
//  MonNavigationController.swift
//  MonRestoDuMonde
//
//  Created by TOGNI Elie on 03/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class MonNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = NOIR               //Couleur du navigationBar
        navigationBar.tintColor = GRIS_TRES_CLAIR       //Couleur du navigationBar
        navigationBar.titleTextAttributes = [.font: FONT_DE_BASE as Any, .foregroundColor: GRIS_TRES_CLAIR]
        navigationBar.isTranslucent = true              //navigationBar translucide ou non (false/true), true par défaut
        
    }

}
