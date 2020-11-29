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
struct ModelLogo: Codable {
    
    let url: String
}
struct ModelPrice: Codable {
    
    let date : String?
    let open : Double?
    let close : Double?
    let high : Double?
    let low : Double?
    let volume : Int?
    let uOpen : Double?
    let uClose : Double?
    let uHigh : Double?
    let uLow : Double?
    let uVolume : Int?
    let change : Int?
    let changePercent : Int?
    let label : String?
    let changeOverTime : Int?
   
}
