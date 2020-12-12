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
      
        
        
        viewLogoCompany.centerX(inView: cardView)
        viewLogoCompany.anchor(top: cardView.topAnchor,paddingTop: 20, width: 40, height: 40)
        
        companyName.anchor(top: cardView.topAnchor,left: cardView.leftAnchor ,paddingTop: 80,paddingLeft: 25,height: 30)
   
        companyNameLabel.anchor(top: cardView.topAnchor,right: cardView.rightAnchor,paddingTop: 80,paddingRight: 25,height: 30)
   
        symbolName.anchor(top: companyName.bottomAnchor,left: cardView.leftAnchor ,paddingTop: 30,paddingLeft: 25,height: 30)

        symbolLabel.anchor(top: companyNameLabel.bottomAnchor,right: cardView.rightAnchor,paddingTop: 30,paddingRight: 25,height: 30)
        

        
        priceName.anchor(top:symbolName.bottomAnchor,left: cardView.leftAnchor ,paddingTop: 30,paddingLeft: 25,height: 30)
        
        
        priceNameLabel.anchor(top:symbolLabel.bottomAnchor ,right: cardView.rightAnchor,paddingTop: 30,paddingRight: 25,height: 30)
        
        
        priceChangeName.anchor(top: priceName.bottomAnchor,left: cardView.leftAnchor ,paddingTop: 30,paddingLeft: 25,height: 30)
        
        
        priceChangeNameLabel.anchor(top: priceNameLabel.bottomAnchor ,right: cardView.rightAnchor,paddingTop: 30,paddingRight: 25,height: 30)
        
 
        barChart.anchor(top: priceChangeName.bottomAnchor, left: cardView.leftAnchor, right: cardView.rightAnchor,paddingTop: 20,paddingLeft: 25,paddingRight: 25)
        barChart.heightEqualToMultiplier(inView: cardView, multiplier: 0.3)
        
  
    }
    func createPickerViewLayer() {
        
        cardView.addSubview(pickerView)
        
        pickerView.anchor(left: cardView.leftAnchor,right: cardView.rightAnchor, bottom:cardView.bottomAnchor,paddingLeft: 20, paddingRight: 20, paddingBottom: 20)
        pickerView.heightEqualToMultiplier(inView: cardView, multiplier: 0.2)
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

