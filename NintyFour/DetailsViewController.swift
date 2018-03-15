//
//  DetailsViewController.swift
//  NintyFour
//
//  Created by Udeshika on 15/3/18.
//  Copyright © 2018 Udeshika. All rights reserved.
//

import UIKit
import Alamofire

class DetailsViewController: UIViewController {
    var beerId:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(":::::: ", beerId)
        let url = URL(string: "https://api.punkapi.com/v2/beers?page=1")
        Alamofire.request(url!).responseJSON{ (response) in
            let result = response.data
            do{
//                self.beerList =  try JSONDecoder().decode([Beer].self, from:result!)
//                self.tableView.reloadData()
            }catch{
                print("error")
            }
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
