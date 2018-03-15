//
//  Beer.swift
//  NintyFour
//
//  Created by Udeshika on 15/3/18.
//  Copyright © 2018 Udeshika. All rights reserved.
//

struct Beer:Decodable {
    let id: Int
    let name: String
    let image_url: String
    let description: String
    let first_brewed: String
}

