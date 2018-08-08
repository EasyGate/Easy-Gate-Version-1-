//
//  MainDealsViewPager.swift
//  Easy Gate
//
//  Created by ameer on 8/5/18.
//  Copyright © 2018 JpJets. All rights reserved.
//


import UIKit

class MainDealsViewPager: UIViewController {
    
    @IBOutlet weak var viewPager: ViewPager!
    
    // MARK: - var
    private var sliderImagesObj = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSliderImages()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupPager()
    }
    
    private func setupPager() {
        viewPager.dataSource = self
        //viewPager.animationNext()
        viewPager.pageControl.isHidden = true
    }
    
    private func setupSliderImages(){
       sliderImagesObj = ["q" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" , "q" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image" , "q" , "Car" , "5918348-image"  , "q" , "Car" , "5918348-image"]
    }
    
}

extension MainDealsViewPager: ViewPagerDataSource{
    
    
    func numberOfItems(viewPager: ViewPager) -> Int {
        return sliderImagesObj.count
    }
    
    func viewAtIndex(viewPager: ViewPager, index: Int, view: UIView?) -> UIView {
        
        //Declaration
        var newView = view
        var imageView = UIImageView()
        
        if (newView == nil) {
            
            //Frames
            newView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height:  self.view.frame.height))
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
            
            // Image properites
            // let image = UIImage(named: sliderImagesObj[index])
            // imageView.sd_setImage(with: URL(string: (RealmService.SharedInstans.selectSliderImages().filter {$0.id == sliderImagesObj[index].id}.first?.imgUrl)!) )
            
            imageView.image = UIImage(named: sliderImagesObj[index])
            imageView.contentMode = .scaleAspectFit
            imageView.clipsToBounds = true
            
            // Add to view
            newView?.addSubview(imageView)
            
        }
        return newView!
    }
    func didSelectedItem(index: Int) {
        if index == 0  || index == 1
        {
            let sb = UIStoryboard(name: "Maine", bundle: nil)
            let controller = sb.instantiateViewController(withIdentifier: "PanoramaViewController")
            self.navigationController?.pushViewController(controller, animated: true)
            print(index)
        } else{
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "ImageViewController")
        self.navigationController?.pushViewController(controller, animated: true)
             print(index)
        }
        //self.redSlider.value = 1
       // self.updateFocusIfNeeded()
       // self.updateViewConstraints()
    }
    
}

