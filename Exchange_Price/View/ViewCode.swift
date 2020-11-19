//
//  ViewCode.swift
//  Exchange_Price
//
//  Created by Sergey on 09.11.2020.
//

import Foundation
import UIKit
import NeumorphismKit

final class ViewCode: UIView {
    
    //MARK: - First layer in TopView
    
    let cardView: UIView = {
        let view = UIView()
      //  let view = NeumorphismProgressView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
               return view
           }()
    //MARK: - NeumorphismView

    //MARK: - Second layer in TopView
    
    let companyName: UILabel = {
               // let label = UILabel()
                let label = NeumorphismLabel()
                label.baseColor = .white
                label.cornerRadius = 3
                label.isConvex = true
      //  label.layer.borderWidth = 1
      //  label.shadowOffset = CGSize(width: 0, height: -1)
        
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
               // label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
      //  label.te
                return label
            }()
    let companyNameLabel: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let symbolName: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let symbolLabel: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let priceName: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let priceNameLabel: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let priceChangeName: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let priceChangeNameLabel: UILabel = {
                let label = UILabel()
                label.numberOfLines = 0
                label.font = Constants.postLabelFont
                label.translatesAutoresizingMaskIntoConstraints = false
                label.textColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
                label.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                label.textAlignment = .right
                return label
            }()
    let pickerView: UIPickerView = {
                let picker = UIPickerView()
                picker.translatesAutoresizingMaskIntoConstraints = false
                return picker
    }()
    let activityIndicator: UIActivityIndicatorView = {
                let indicotor = UIActivityIndicatorView()
                indicotor.translatesAutoresizingMaskIntoConstraints = false
                return indicotor
    }()
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            createCardLayer()
            createLabelLayer()
            createPickerViewLayer()
            createActivityIndicator()
            set(companyNameSet: "???",symbolSet: "???",priceNameSet: 1,priceChangeNameSet: 1)
        }
    
    func createCardLayer() {
            addSubview(cardView)
            cardView.layer.cornerRadius = 10
            cardView.fillSuperview(padding: Constants.cardInsets)

        }
    
    func createLabelLayer() {
        cardView.addSubview(companyName)
        cardView.addSubview(companyNameLabel)
        cardView.addSubview(symbolName)
        cardView.addSubview(symbolLabel)
        cardView.addSubview(priceName)
        cardView.addSubview(priceNameLabel)
        cardView.addSubview(priceChangeName)
        cardView.addSubview(priceChangeNameLabel)

       
        

       
        companyName.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 40).isActive = true
        companyName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        
        companyNameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 40).isActive = true
        companyNameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        
        symbolName.topAnchor.constraint(equalTo: companyName.bottomAnchor, constant: 40).isActive = true
        symbolName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        
        symbolLabel.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: 40).isActive = true
        symbolLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        
        priceName.topAnchor.constraint(equalTo: symbolName.bottomAnchor, constant: 40).isActive = true
        priceName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        
        priceNameLabel.topAnchor.constraint(equalTo: symbolLabel.bottomAnchor, constant: 40).isActive = true
        priceNameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        
        priceChangeName.topAnchor.constraint(equalTo: priceName.bottomAnchor, constant: 40).isActive = true
        priceChangeName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        
        priceChangeNameLabel.topAnchor.constraint(equalTo: priceNameLabel.bottomAnchor, constant: 40).isActive = true
        priceChangeNameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        
        

    }
    func createPickerViewLayer() {
        cardView.addSubview(pickerView)
        pickerView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 8).isActive = true
        pickerView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 8).isActive = true
        pickerView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -8).isActive = true
        pickerView.heightAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: 0.3, constant: 0).isActive = true
        
    }
    func createActivityIndicator() {
        cardView.addSubview(activityIndicator)
        activityIndicator.centerYAnchor.constraint(equalTo: cardView.centerYAnchor, constant: 0).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: cardView.centerXAnchor, constant: 0).isActive = true
        
    }
    
    func set(companyNameSet: String,symbolSet: String,priceNameSet: Double,priceChangeNameSet: Double) {
        companyName.text = "CompanyName"
        companyNameLabel.text = companyNameSet
        symbolName.text = "Symbol"
        symbolLabel.text = symbolSet
        priceName.text = "Price"
        priceNameLabel.text = "\(priceNameSet)"
        priceChangeName.text = "PriceChange"
        priceChangeNameLabel.text = "\(priceChangeNameSet)"
    }
 
    
    required init?(coder aDecoder: NSCoder) {
              super.init(coder: aDecoder)
              createCardLayer()
              createLabelLayer()
              createPickerViewLayer()
              createActivityIndicator()
              set(companyNameSet: "",symbolSet: "???",priceNameSet: 1,priceChangeNameSet: 1)
          }
}
