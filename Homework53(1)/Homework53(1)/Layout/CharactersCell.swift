//
//  CharactersCell.swift
//  Homework53(1)
//
//  Created by Kato on 7/1/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit
import CoreData

class CharactersCell: UICollectionViewCell {

    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
        self.save()
    }
    
    func save() {

        let context = AppDelegate.coreDataContainer.viewContext
        
        let entityDescription = NSEntityDescription.entity(forEntityName: "Planets", in: context)
        
        let planetObject = NSManagedObject(entity: entityDescription!, insertInto: context)
        
        planetObject.setValue(planetImageView.image, forKey: "image")
        planetObject.setValue(planetDescriptionLabel.text!, forKey: "content")
        
        do {
            try context.save()
            //print("info saved successfully")
        }
        catch {
            print("failed")
        }
        
    }

}
