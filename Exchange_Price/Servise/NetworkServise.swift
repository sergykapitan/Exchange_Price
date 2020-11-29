//
//  NetworkServise.swift
//  Exchange_Price
//
//  Created by Sergey on 10.11.2020.
//

import Foundation

protocol Networking {
    func request(for symbol: String,for request: String, complation:  @escaping (Data) -> ())
}


class NetworkServise: Networking {

    
    func request(for symbol: String,for request: String, complation: @escaping(Data)->()) {
        
        let session = URLSession.shared
        let url = self.url(from: symbol, params: request)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data,error == nil {
                    DispatchQueue.main.async {
                        complation(data)
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

        }

        task.resume()
        
    }

    
    private func url(from symbol: String,params: String) -> URL {
        
        var components = URLComponents()

        components.scheme = API.scheme
        components.host = API.host
        components.path = API.path + symbol + params
        components.queryItems = [
            URLQueryItem(name: "token", value: API.token),
        ]
        return components.url!
    }
     
}
