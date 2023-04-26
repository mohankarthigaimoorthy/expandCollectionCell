//
//  expandCollectionViewController.swift
//  expandCollectionViewCell
//
//  Created by Mohan K on 15/02/23.
//

import UIKit

//private let reuseIdentifier = "Cell"

class expandCollectionViewController: UICollectionViewController {
    let inspirations = Inspiration.allInspirations()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let patternImage = UIImage(named: "Pattern") {
            view.backgroundColor = UIColor(patternImage: patternImage)
            
        }
        collectionView?.backgroundColor = .clear
        collectionView?.decelerationRate = .fast
    }
    }

   
extension expandCollectionViewController {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return inspirations.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InspirationCell.reuseIdentifier,for: indexPath) as? InspirationCell else { return UICollectionViewCell() }
        cell.inspiration = inspirations[indexPath.item]
       return cell
    }
}
   

