//
//  ViewController.swift
//  NintyFour
//
//  Created by Udeshika on 15/3/18.
//  Copyright © 2018 Udeshika. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var beerList = [Beer]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.rowHeight = 150.0
        super.viewDidLoad()
        let url = URL(string: "https://api.punkapi.com/v2/beers?page=1")
        Alamofire.request(url!).responseJSON{ (response) in
            let result = response.data
            do{
                self.beerList =  try JSONDecoder().decode([Beer].self, from:result!)
                self.tableView.reloadData()
            }catch{
                print("error")
            }
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nfCustomCell", for: indexPath) as! NFCustomTableViewCell
        let beer = beerList[indexPath.row]
        
        cell.beerDetailsLbl.text = beer.name
        cell.beerImage.contentMode = UIViewContentMode.scaleAspectFit
        cell.beerImage.sd_setImage(with: URL(string: beer.image_url))
        cell.beerDescription.text = beer.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let lastItem = beerList.count - 1
        if indexPath.row == lastItem {
            //
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "beerDetailsViewTransition", sender: beerList[indexPath.row].id)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsViewController = segue.destination as! DetailsViewController
        detailsViewController.beerId = sender as! Int
    }
    
    func loadBeerInfor(){
        
    }
}

