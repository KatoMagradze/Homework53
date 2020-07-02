//
//  ViewController.swift
//  Homework53(1)
//
//  Created by Kato on 7/1/20.
//  Copyright © 2020 TBC. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var planets = [Planet]()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
          layout.delegate = self
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
//        let nib = UINib(nibName: "CharactersCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "characters_cell")
//
//        if let collectionViewLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            collectionViewLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
//
//        }
        
        collectionView?.backgroundColor = .clear
        collectionView?.contentInset = UIEdgeInsets(top: 23, left: 16, bottom: 10, right: 16)
        
        self.setUpPlanets()
    }
    
    func setUpPlanets() {

        planets.append(PlanetsInfo.mercury)
        planets.append(PlanetsInfo.venus)
        planets.append(PlanetsInfo.earth)
        planets.append(PlanetsInfo.mars)
        planets.append(PlanetsInfo.jupiter)
        planets.append(PlanetsInfo.saturn)
        planets.append(PlanetsInfo.uranus)
        planets.append(PlanetsInfo.neptune)
 
    }
    

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return planets.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characters_cell", for: indexPath) as! CharactersCell
        
        cell.layer.cornerRadius = 15
        
        cell.planetImageView.image = planets[indexPath.row].image
        cell.planetNameLabel.text = planets[indexPath.row].name
        cell.planetDescriptionLabel.text = planets[indexPath.row].description
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "details_vc")
        
        if let detailsVC = vc as? DetailsViewController {
            
            detailsVC.myPlanetName = planets[indexPath.row].name
            detailsVC.myPlanetDescription = planets[indexPath.row].description
            detailsVC.myPlanetImage = planets[indexPath.row]
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      let itemSize = (collectionView.frame.width - (collectionView.contentInset.left + collectionView.contentInset.right + 10)) / 2
      return CGSize(width: itemSize, height: itemSize)
    }

    
}

extension ViewController: PinterestLayoutDelegate {
  func collectionView(
      _ collectionView: UICollectionView,
      heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
    return planets[indexPath.item].image.size.height
  }
}




