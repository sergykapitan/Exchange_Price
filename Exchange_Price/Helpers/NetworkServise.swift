//
//  NetworkServise.swift
//  Exchange_Price
//
//  Created by Sergey on 10.11.2020.
//

import Foundation

protocol Networking {
    func request(for symbol: String, complation:  @escaping (ModelExchange) -> ())
}


class NetworkServise: Networking {
    
    func request(for symbol: String, complation: @escaping(ModelExchange)->()) {
        
        let session = URLSession.shared
        let url = URL(string: "https://cloud.iexapis.com/stable/stock/\(symbol)/quote?token=\(API.token)")!

        let task = session.dataTask(with: url) { data, response, error in
            if let data = data,error == nil {
              let requestData =  self.parseQuote(from: data)
                DispatchQueue.main.async {
                     complation(requestData)
                }
            }

            if error != nil || data == nil {
                print("Client error!")
                return
            }

            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                print("Server error!")
                return
            }

//            guard let mime = response.mimeType, mime == "application/json" else {
//                print("Wrong MIME type!")
//                return
//            }
        }

        task.resume()
        
    }
    
        private func parseQuote(from data: Data) -> ModelExchange {
                let product: ModelExchange = try!JSONDecoder().decode(ModelExchange.self, from: data)
                return product
        }
     
}
