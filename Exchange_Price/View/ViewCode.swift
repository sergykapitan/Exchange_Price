//
//  ViewCode.swift
//  Exchange_Price
//
//  Created by Sergey on 09.11.2020.
//

import Foundation
import UIKit

final class ViewCode: UIView {
    
    let barChart: ChartsView = {
        let chart = ChartsView()
        chart.layer.cornerRadius = 6
        chart.layer.borderWidth = 1
        chart.layer.borderColor = Constants.fillColor.cgColor
        chart.backgroundColor = .offWhite
        chart.translatesAutoresizingMaskIntoConstraints = false
        chart.clipsToBounds = true
        return chart
    }()
    
    //MARK: - First layer in TopView
    
    let cardView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.8
        view.layer.borderColor = Constants.fillColor.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        view.layer.shadowRadius = 2.0
        view.layer.shadowColor = UIColor.black.withAlphaComponent(20).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
            return view
        }()
    
    //MARK: - Second layer in TopView
    
    let viewLogoCompany: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 6
        view.layer.borderWidth = 0.8
        view.layer.borderColor = Constants.fillColor.cgColor
        view.backgroundColor = .offWhite
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let companyName: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = 6
        label.layer.borderWidth = 0.8
        label.layer.borderColor = Constants.fillColor.cgColor
        label.backgroundColor = .offWhite
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .center
        label.clipsToBounds = true
            return label
        }()
    
    let companyNameLabel: UILabel = {
        let label = UILabel()
        label.layer.cornerRadius = 6
        label.layer.borderWidth = 1
        label.layer.borderColor = Constants.fillColor.cgColor
        label.layer.shadowOpacity = 1
        label.layer.shadowOffset = CGSize(width: -4.0, height: -4.0)
        label.layer.shadowRadius = 2.0
        label.backgroundColor = .offWhite
        label.layer.shadowColor = UIColor.black.cgColor
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.textAlignment = .center
        label.clipsToBounds = true
            return label
        }()
    
    let symbolName: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 6
        label.layer.borderColor = Constants.fillColor.cgColor
        label.layer.shadowOpacity = 1
        label.layer.shadowRadius = 2.0
        label.backgroundColor = .offWhite
        label.layer.shadowColor = UIColor.black.cgColor
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.clipsToBounds = true
       // label.layer.masksToBounds = false
            return label
        }()
    
    let symbolLabel: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 6
        label.layer.borderColor = Constants.fillColor.cgColor
        label.backgroundColor = .offWhite
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            return label
        }()
    
    let priceName: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 6
        label.layer.borderColor = Constants.fillColor.cgColor
        label.backgroundColor = .offWhite
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            return label
        }()
    
    let priceNameLabel: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 6
        label.layer.borderColor = Constants.fillColor.cgColor
        label.backgroundColor = .offWhite
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            return label
        }()
    
    let priceChangeName: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 6
        label.layer.borderColor = Constants.fillColor.cgColor
        label.backgroundColor = .offWhite
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            return label
        }()
    
    let priceChangeNameLabel: UILabel = {
        let label = UILabel()
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 6
        label.layer.borderColor = Constants.fillColor.cgColor
        label.backgroundColor = .offWhite
        label.clipsToBounds = true
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Constants.postLabelFont
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor =  #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            return label
        }()
    
    let pickerView: UIPickerView = {
        let picker = UIPickerView()
        picker.layer.borderWidth = 1
        picker.layer.cornerRadius = 8
        picker.layer.borderColor = Constants.fillColor.cgColor
        picker.backgroundColor = .offWhite
        picker.clipsToBounds = true
        picker.translatesAutoresizingMaskIntoConstraints = false
            return picker
        }()
    
    let activityIndicator: UIActivityIndicatorView = {
        let indicotor = UIActivityIndicatorView()
        indicotor.translatesAutoresizingMaskIntoConstraints = false
            return indicotor
        }()
    let activityImageIndicator: UIActivityIndicatorView = {
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
        set(companyNameSet: " ??? ",symbolSet: " ??? ",priceNameSet: 0,priceChangeNameSet: 0)
        setImage(url: "")
        }
    
    func createCardLayer() {
        addSubview(cardView)
        cardView.fillSuperview(padding: Constants.cardInsets)
        }
    
    func createLabelLayer() {
        cardView.addSubview(viewLogoCompany)
        cardView.addSubview(companyName)
        cardView.addSubview(companyNameLabel)
        cardView.addSubview(symbolName)
        cardView.addSubview(symbolLabel)
        cardView.addSubview(priceName)
        cardView.addSubview(priceNameLabel)
        cardView.addSubview(priceChangeName)
        cardView.addSubview(priceChangeNameLabel)
        cardView.addSubview(barChart)
       // chartView.addSubview(barChart)
      
        viewLogoCompany.centerXAnchor.constraint(equalTo: cardView.centerXAnchor, constant: 0).isActive = true
        viewLogoCompany.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20).isActive = true
        viewLogoCompany.widthAnchor.constraint(equalToConstant: 40).isActive = true
        viewLogoCompany.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        companyName.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 80).isActive = true
        companyName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        companyName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        companyNameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 80).isActive = true
        companyNameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        companyNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        symbolName.topAnchor.constraint(equalTo: companyName.bottomAnchor, constant: 30).isActive = true
        symbolName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        symbolName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        symbolLabel.topAnchor.constraint(equalTo: companyNameLabel.bottomAnchor, constant: 30).isActive = true
        symbolLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        symbolLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        priceName.topAnchor.constraint(equalTo: symbolName.bottomAnchor, constant: 30).isActive = true
        priceName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        priceName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        priceNameLabel.topAnchor.constraint(equalTo: symbolLabel.bottomAnchor, constant: 30).isActive = true
        priceNameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        priceNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        priceChangeName.topAnchor.constraint(equalTo: priceName.bottomAnchor, constant: 30).isActive = true
        priceChangeName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        priceChangeName.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        
        priceChangeNameLabel.topAnchor.constraint(equalTo: priceNameLabel.bottomAnchor, constant: 30).isActive = true
        priceChangeNameLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        priceChangeNameLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        barChart.topAnchor.constraint(equalTo: priceChangeName.bottomAnchor, constant: 20).isActive = true
        barChart.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 25).isActive = true
        barChart.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -25).isActive = true
        barChart.heightAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: 0.3,constant: 0).isActive = true
  
    }
    func createPickerViewLayer() {
        cardView.addSubview(pickerView)
        pickerView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20).isActive = true
        pickerView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20).isActive = true
        pickerView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20).isActive = true
        pickerView.heightAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: 0.2, constant: 0).isActive = true
    }
    func createActivityIndicator() {
        cardView.addSubview(activityIndicator)
        viewLogoCompany.addSubview(activityImageIndicator)
        
        activityImageIndicator.centerYAnchor.constraint(equalTo: viewLogoCompany.centerYAnchor, constant: 0).isActive = true
        activityImageIndicator.centerXAnchor.constraint(equalTo: viewLogoCompany.centerXAnchor, constant: 0).isActive = true
        
        
        
        activityIndicator.centerYAnchor.constraint(equalTo: barChart.centerYAnchor, constant: 0).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: barChart.centerXAnchor, constant: 0).isActive = true
        
    }
    
    func set(companyNameSet: String,symbolSet: String,priceNameSet: Double,priceChangeNameSet: Double) {
        companyName.text = " CompanyName "
        companyNameLabel.text = companyNameSet
        symbolName.text = " Symbol "
        symbolLabel.text = symbolSet
        priceName.text = " Price "
        priceNameLabel.text = " \(priceNameSet) "
        priceChangeName.text = " PriceChange "
        priceChangeNameLabel.text = " \(priceChangeNameSet) "
    }
    func setImage(url: String?) {
        viewLogoCompany.moa.url = url
    }
    func setChats () {
       
        
    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createCardLayer()
        createLabelLayer()
        createPickerViewLayer()
        createActivityIndicator()       
        set(companyNameSet: "???",symbolSet: "???",priceNameSet: 1,priceChangeNameSet: 1)
    }
}

