//
//  ModelExchange.swift
//  Exchange_Price
//
//  Created by Sergey on 15.11.2020.
//

import Foundation


struct ModelExchange: Codable {

    let companyName: String
    let symbol: String
    let latestPrice: Double
    let change: Double
    
}
