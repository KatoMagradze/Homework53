//
//  DetailsViewController.swift
//  Homework53(1)
//
//  Created by Kato on 7/2/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetName: UILabel!
    @IBOutlet weak var planetDescription: UILabel!
    
    var myPlanetImage: Planet?
    var myPlanetName = ""
    var myPlanetDescription = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = myPlanetName
        //self.planetImage.image = planetImage.image
        planetImage.layer.cornerRadius = 10
        self.planetImage.image = myPlanetImage?.image
        self.planetName.text = myPlanetName
        self.planetDescription.text = myPlanetDescription

        // Do any additional setup after loading the view.
    }
    


}
