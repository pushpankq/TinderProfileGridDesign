//
//  ProfileController.swift
//  TinderProfileGrid
//
//  Created by Puspank Kumar on 14/02/19.
//  Copyright © 2019 Puspank Kumar. All rights reserved.
//

import Foundation
import UIKit

class ProfileController:UICollectionViewController  {
    
    fileprivate let headerId = "headerId"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        navigationItem.title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView.alwaysBounceVertical = true
        
        let headerNib = UINib(nibName: "Header", bundle: nil)
        
        collectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)

    }
  
}

extension ProfileController : UICollectionViewDelegateFlowLayout {
    
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: view.frame.width)
    }
}
