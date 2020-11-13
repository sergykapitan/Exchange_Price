//
//  ViewController.swift
//  Exchange_Price
//
//  Created by Sergey on 06.11.2020.
//

import UIKit

class ViewController: UIViewController{

    let model = ModelPrice()
    var shareView = ViewCode()

    
    override func loadView() {
           view = shareView
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        title = "Price"
        shareView.pickerView.dataSource = self
        shareView.pickerView.delegate = self
        
        requestQuoteUpdete()
    }
    
    
    private func requestQute(for symbol: String) {
        
        let token = "pk_48df081355d64e2b8973505cb98d3d3d"
        
        guard let url = URL(string: "https://cloud.iexapis.com/stable/stock/\(symbol)/quote?token=\(token)") else {
            return
        }
        let dataTask = URLSession.shared.dataTask(with: url) { (data,response,error) in
            if let data = data,
               (response as? HTTPURLResponse)?.statusCode == 200,
               error == nil {
                self.parseQuote(from: data)
            } else {
                print("Network error")
            }
        }
        dataTask.resume()
        
    }
    
    private func parseQuote(from data: Data) {
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: data)
            guard
                let json = jsonObject as? [String: Any],
                let companyName = json["companyName"] as? String,
                let companySymbol = json["symbol"] as? String,
                let price = json["latestPrice"] as? Double,
                let priceChange = json["change"] as? Double else { return print("invalid JSON") }
            
            
            DispatchQueue.main.async { [ weak self ] in
                self?.displayStockInfo(companyName: companyName, companySymbol: companySymbol, price: price, priceChange: priceChange)

            }
        
        } catch {
            print("JSON parssing error " + error.localizedDescription)
        }
    }
    private func displayStockInfo(companyName: String,
                                  companySymbol: String,
                                  price:Double,
                                  priceChange:Double) {
        shareView.activityIndicator.stopAnimating()
        shareView.set(companyNameSet: companyName,
                      symbolSet: companySymbol,
                      priceNameSet: price,
                      priceChangeNameSet: priceChange )
        
    }
}


extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return model.companies.keys.count
    }
   
    
}
extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return Array(model.companies.keys)[row]
    }
    
    private func requestQuoteUpdete(){
        shareView.activityIndicator.startAnimating()
        shareView.set(companyNameSet: "",symbolSet: "",priceNameSet: 0,priceChangeNameSet: 0)
        
        let selectedRow = shareView.pickerView.selectedRow(inComponent: 0)
        let selectedSymbol = Array(model.companies.values)[selectedRow]
        requestQute(for: selectedSymbol)
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        requestQuoteUpdete()
        
    }
}
