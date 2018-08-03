//
//  Menus.swift
//  MonRestoDuMonde
//
//  Created by TOGNI Elie on 03/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class Menu {
    
    private var _pays: String
    private var _image: UIImage
    private var _plats: [Plats]
    
    var pays: String {
        return _pays
    }
    
    var image: UIImage {
        return _image
    }
    
    var plats: [Plats]{
        return _plats
    }
    
    init(pays: String, image: UIImage){
        self._pays = pays
        self._image = image
        self._plats = LesPlats.obtenir.ajouterPlatAuMenu(pays: self._pays)
    }
    
    
}
