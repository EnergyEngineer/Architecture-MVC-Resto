//
//  PlatVue.swift
//  MonRestoDuMonde
//
//  Created by TOGNI Elie on 03/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class PlatVue: UIView {

    var typeDePlat: UILabel?
    var imageDuPlat: UIImageView?
    var descriptionDuPlat: UILabel?
    
  
    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func miseEnPlace(plat: Plats){
        typeDePlat = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width - 40, height: 50))
        typeDePlat?.text = convertirTypeEnplat(type: plat.type)
        typeDePlat?.textAlignment = .left
        typeDePlat?.font = FONT_DE_BASE
        typeDePlat?.textColor = GRIS_TRES_CLAIR
        guard typeDePlat != nil else {return}
        addSubview(typeDePlat!)
        
        var maxY = typeDePlat!.frame.maxY
        
        imageDuPlat = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDuPlat?.image = plat.image
        imageDuPlat?.contentMode = .scaleAspectFill
        imageDuPlat?.clipsToBounds = true
        guard imageDuPlat != nil else {return}
        addSubview(imageDuPlat!)
        maxY = imageDuPlat!.frame.maxY
        
        descriptionDuPlat = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width - 40, height: 100))
        descriptionDuPlat?.numberOfLines = 0
        descriptionDuPlat?.text = plat.desc
        descriptionDuPlat?.font = FONT_DE_BASE
        descriptionDuPlat?.textColor = GRIS_TRES_CLAIR
        descriptionDuPlat?.textAlignment = .center
        guard descriptionDuPlat != nil else {return}
        addSubview(descriptionDuPlat!)
        
        
        
        
    }
    
    func convertirTypeEnplat(type: Type) -> String {
        switch type {
        case .entree: return "Nos Entrées"
        case .platPrincipal: return "Plat principal"
        case .dessert: return "Dessert"
        }
    
    }
    

}
