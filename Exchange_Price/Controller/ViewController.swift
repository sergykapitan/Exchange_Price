//
//  ViewController.swift
//  Exchange_Price
//
//  Created by Sergey on 06.11.2020.
//
import UIKit

class ViewController: UIViewController{

    
    var delegateNetworkServise: Networking?
    var symbol: String? = "AAPL"

    let networkServise = NetworkServise()
    let model = ModelPrice()
    var shareView = ViewCode()
    var defoltImage = UIImage(named:"apple.png")

    
//    private var image: UIImage? {
//        didSet {
//            displayImage(image: image!)
//         //   shareView.setImage(image: (image ?? defoltImage)!)
//        }
//    }
//    private var url: URL? {
//        didSet {
//            shareView.setImage(url: url)
//        }
//    }
    override func loadView() {
           view = shareView
       }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .offWhite
        title = "Price"
        
        shareView.pickerView.dataSource = self
        shareView.pickerView.delegate = self
        navigationController?.navigationBar.barTintColor = .offWhite
        
        
        delegateNetworkServise = networkServise
    }
    
    private func requestQute(for selectedSymbol: String) {
        symbol = selectedSymbol
        
        delegateNetworkServise?.request(for: symbol!,for: API.request ,complation: { [weak self](data) in
            DispatchQueue.main.async { [ weak self ] in
                let modelParse =  self?.parseQuote(from: data)
                self?.displayStockInfo(model: modelParse!)
            }
        })
        
       delegateNetworkServise?.request(for: symbol!, for: API.requestLogo, complation: {[weak self] (data) in
            DispatchQueue.main.async { [ weak self ] in
                let modelLogo = self?.parseLogo(from: data)
                let urlLogo = modelLogo?.url
                self?.shareView.activityImageIndicator.stopAnimating()
                self!.shareView.setImage(url: urlLogo)
                }
        })
    }
    private func parseQuote(from data: Data) -> ModelExchange {
        
        let product: ModelExchange = try! JSONDecoder().decode(ModelExchange.self, from: data)
                return product
    }
    private func parseLogo(from data: Data) -> ModelLogo{
        
        let product: ModelLogo = try! JSONDecoder().decode(ModelLogo.self, from: data)
                return product
    }
    

    func displayStockInfo(model: ModelExchange) {
        shareView.activityIndicator.stopAnimating()
        shareView.set(
            companyNameSet: model.companyName,
            symbolSet: model.symbol,
            priceNameSet: model.latestPrice,
            priceChangeNameSet: model.change)
 
    }
    func displayImage(image: UIImage) {
       // shareView.setImage
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
    
    private func requestQuoteUpdate(){
        
               shareView.activityIndicator.startAnimating()
               shareView.activityImageIndicator.startAnimating()
               shareView.viewLogoCompany.image = .none
               shareView.set(companyNameSet: "-",
                             symbolSet: "-",
                             priceNameSet: 0,
                             priceChangeNameSet: 0)
                       
                let selectedRow = shareView.pickerView.selectedRow(inComponent: 0)
                let selectedSymbol = Array(model.companies.values)[selectedRow]
                requestQute(for: selectedSymbol)
                    
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
                requestQuoteUpdate()
               
    }
}

