//
//  ALaCarte.swift
//  MonRestoDuMonde
//
//  Created by TOGNI Elie on 03/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class ALaCarte {
    
    private var _type: Type
    private var _plats: [Plats]
    
    var type: Type{
        return _type
    }
    var plats: [Plats]{
        return _plats
    }
    
    init(type: Type){
        self._type = type
        self._plats = [Plats]()
    }
    
}
