//
//  AttractionItemsItemsViewController.swift
//  Easy Gate
//
//  Created by ameer on 8/5/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class AttractionItemsItemsViewController: UIViewController  {
    
    // MARK: - Properites
    var a = MainDealsViewPager()
     var   saliderImagesObj = ["q" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" , "q" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" , "q" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" ]
    
     // MARK: - IBOutlet
     @IBOutlet weak var ImagesCollectionView: UICollectionView!
    
    // MARK: - IBAction
    @IBAction func Back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)}
    
    @IBAction func Home(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
  // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagesCollectionView.delegate = self
        ImagesCollectionView.dataSource = self
    }
}

// MARK: - extensions
extension AttractionItemsItemsViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout , UIGestureRecognizerDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return saliderImagesObj.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ImagesCollectionView.dequeueReusableCell(withReuseIdentifier: "ImagsCollectionViewCell", for: indexPath) as! ImagsCollectionViewCell
        cell.CollectionImage.image = UIImage(named: saliderImagesObj[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: collectionView.frame.size.width/5, height: collectionView.frame.size.height / 1.3 ) }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         GlobalManager.sharedInstance.selectedImage = indexPath.row  }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(0,
                                10,
                                0,
                                0) }}
