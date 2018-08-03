//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by TOGNI Elie on 03/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.layer.addSublayer(Degrade())
        view.bringSubview(toFront: scroll)
        // Do any additional setup after loading the view.
        
        guard menu != nil else {return}
        miseEnPlace(menu: menu!)
    }
    
    
    
    
    
    func miseEnPlace(menu: Menu){
        print("Ca marche on a le menu : \(menu.pays)")
        
    }

}
