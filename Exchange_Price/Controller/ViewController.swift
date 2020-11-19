//
//  ViewController.swift
//  Exchange_Price
//
//  Created by Sergey on 06.11.2020.
//

import UIKit

class ViewController: UIViewController{

    
    var delegate: Networking?
    var symbol: String? = "AAPL"

    let networkServise = NetworkServise()
    let model = ModelPrice()
    var shareView = ViewCode()

    
    override func loadView() {
           view = shareView
       }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        title = "Price"
        shareView.pickerView.dataSource = self
        shareView.pickerView.delegate = self
        
        
        
        delegate = networkServise
        delegate?.request(for: symbol!, complation: {[ weak self ] (modelEcxchange) in
            DispatchQueue.main.async { [ weak self ] in
                self?.displayStockInfo(model: modelEcxchange)
            }
        })
       
    }
    
    private func requestQute(for str: String) {
        symbol = str
        delegate?.request(for: symbol!, complation: { [weak self](modelEcxchange) in
            DispatchQueue.main.async { [ weak self ] in
                self?.displayStockInfo(model: modelEcxchange)
            }
        })
        
    }
    

    func displayStockInfo(model: ModelExchange) {
        shareView.activityIndicator.stopAnimating()
        shareView.set(
                      companyNameSet: model.companyName,
                      symbolSet: model.symbol,
                      priceNameSet: model.latestPrice,
                      priceChangeNameSet: model.change)
 
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
               shareView.set(companyNameSet: "",
                             symbolSet: "",
                             priceNameSet: 0,
                             priceChangeNameSet: 0)
                       
                let selectedRow = shareView.pickerView.selectedRow(inComponent: 0)
                let selectedSymbol = Array(model.companies.values)[selectedRow]
                requestQute(for: selectedSymbol)
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
                requestQuoteUpdete()
        
    }
}
