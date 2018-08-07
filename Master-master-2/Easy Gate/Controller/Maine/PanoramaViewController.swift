//
//  PanoramaViewController.swift
//  Easy Gate
//
//  Created by ameer on 8/5/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class PanoramaViewController: UIViewController {
    @IBOutlet weak var panoramaView: CTPanoramaView!
    @IBAction func Home(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Maine", bundle: nil)
        let controller = sb.instantiateViewController(withIdentifier: "Home")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    @IBAction func Back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)}
    
    override func viewDidLoad() {
        super.viewDidLoad()

       panoramaView.image = UIImage(named: "cy")
    }

   
}
