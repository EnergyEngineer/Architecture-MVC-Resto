//
//  Degrade.swift
//  MonRestoDuMonde
//
//  Created by TOGNI Elie on 03/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

//Création d'un gradient de couleurs
class Degrade: CAGradientLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
        miseEnPlace()
    }
    
    
    override init(){
        super.init()
        miseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        miseEnPlace()
    }
    
    func miseEnPlace() {
        frame = UIScreen.main.bounds
        colors = [GRIS_TRES_FONCE.cgColor, GRIS_TRES_CLAIR.cgColor]
        startPoint = CGPoint(x: 0, y: 0) //haut 0, bas 1, gauche 0, droite 1
        endPoint = CGPoint(x: 1, y: 1)
        locations = [0, 1] //0 pour le noir, 1 pour le gris foncé
    }
    
}
