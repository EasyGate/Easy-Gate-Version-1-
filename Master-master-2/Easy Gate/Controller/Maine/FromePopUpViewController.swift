//
//  FromePopUpViewController.swift
//  Easy Gate
//
//  Created by ameer on 8/1/18.
//  Copyright © 2018 JpJets. All rights reserved.
//

import UIKit

class FromePopUpViewController: UIViewController {

 
    // MARK: - Properites
    var AllAirport = ["Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris" ,"Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris" ,"Amman" , "Aqaba" , "London" , "Spain" , "Italy" , "Paris"]
    
    // MARK: - IBOutlet
    @IBOutlet weak var FromePopUpTableView: UITableView!
    
    @IBAction func Back(_ sender: UIButton) {
      
            self.navigationController?.popViewController(animated: false)}
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        FromePopUpTableView.dataSource = self
        FromePopUpTableView.delegate = self
    }
}

// MARK: - extensions
extension FromePopUpViewController : UITableViewDelegate , UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AllAirport.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  FromePopUpTableView.frame.size.height / 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! FromTableViewCell
        cell.FromCurrencyType.text = AllAirport[indexPath.row]
        return cell
    }
    

    

}

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let sb = UIStoryboard(name: "Maine", bundle: nil)
//        let controller = sb.instantiateViewController(withIdentifier: "Home") as! HomeViewController
//
//        let unique = Array(Set(AllAirport.filter({$0 == AllAirport[indexPath.row]})))
//
//        controller.filterdArray = unique
//        self.navigationController?.pushViewController(controller, animated: false)
//        //        GlobalManager.sharedInstance.selectedContry = AllAirport[indexPath.row]
//        print(select)
//    }
//}
//extension Array where Element : Equatable {
//    var unique: [Element] {
//        var uniqueValues: [Element] = []
//        forEach { item in
//            if !uniqueValues.contains(item) {
//                uniqueValues += [item]
//            }
//        }
//        return uniqueValues
//    }
//}
//
