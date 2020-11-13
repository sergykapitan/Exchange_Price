//
//  NetworkServise.swift
//  Exchange_Price
//
//  Created by Sergey on 10.11.2020.
//

import Foundation

protocol Networking {
    func request(for symbol: String, complation:  @escaping (Data?,Error?) -> Void)
}


class NetworkServise: Networking {
    
    let token = "pk_48df081355d64e2b8973505cb98d3d3d"
    
    func request(for symbol: String, complation: @escaping (Data?, Error?) -> Void) {
        guard let url = URL(string: "https://cloud.iexapis.com/stable/stock/\(symbol)/quote?token=\(token)") else {
            return
        }
        let dataTask = URLSession.shared.dataTask(with: url) { (data,response,error) in
            if let data = data {
                print(data)
            }
        }
        dataTask.resume()
    }
    
 
    
    private func url(from path: String, params: [String: String]) -> URL {
        
        var components = URLComponents()
        
        components.scheme = API.scheme
        components.host = API.host
        components.path = API.newsFeed
        print(components.url)
        
        return components.url!
    }
    
    
}
