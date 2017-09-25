//
//  DetailVC.swift
//  JSON
//
//  Created by Matt Deuschle on 9/25/17.
//  Copyright © 2017 Matt Deuschle. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var bikeCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension DetailVC: UICollectionViewDelegate, UICollectionViewDataSource {

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}
