//
//  ViewCode.swift
//  Exchange_Price
//
//  Created by Sergey on 09.11.2020.
//

import Foundation
import UIKit

final class ViewCode: UIView {
    
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
//    private lazy var companyStack: UIStackView = {
//
//        let companyName = UILabel().myLabel()
//        let companyNameLabel = UILabel().myLabel()
//        let stack = UIStackView(arrangedSubviews: [companyName,companyNameLabel])
//        stack.axis = .horizontal
//        stack.distribution = .equalSpacing
//        return stack
//    }()
    
    let companyName: UILabel = {
            return UILabel().myLabel()
        }()

    let companyNameLabel: UILabel = {
            return UILabel().myLabel()
        }()
    
    let symbolName: UILabel = {
            return UILabel().myLabel()
        }()
    
    let symbolLabel: UILabel = {
            return UILabel().myLabel()
        }()
    
    let priceName: UILabel = {
            return UILabel().myLabel()
        }()
    
    let priceNameLabel: UILabel = {
            return UILabel().myLabel()
        }()
    
    let priceChangeName: UILabel = {
            return UILabel().myLabel()
        }()
    
    let priceChangeNameLabel: UILabel = {
            return UILabel().myLabel()
        }()
    
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
    
    //MARK: - constraint First Layer
    
    func createCardLayer() {
        addSubview(cardView)
        cardView.fillSuperview(padding: Constants.cardInsets)
        }
    
    //MARK: - constraint Second Layer
    func createLabelLayer() {
   
        cardView.addSubview(viewLogoCompany)
        viewLogoCompany.centerX(inView: cardView)
        viewLogoCompany.anchor(top: cardView.topAnchor,paddingTop: 20, width: 40, height: 40)
        
        cardView.addSubview(companyName)
        companyName.anchor(top: cardView.topAnchor,left: cardView.leftAnchor ,paddingTop: 80,paddingLeft: 25,height: 30)

        cardView.addSubview(companyNameLabel)
        companyNameLabel.anchor(top: cardView.topAnchor,right: cardView.rightAnchor,paddingTop: 80,paddingRight: 25,height: 30)
   
        cardView.addSubview(symbolName)
        symbolName.anchor(top: companyName.bottomAnchor,left: cardView.leftAnchor ,paddingTop: 30,paddingLeft: 25,height: 30)

        cardView.addSubview(symbolLabel)
        symbolLabel.anchor(top: companyName.bottomAnchor,right: cardView.rightAnchor,paddingTop: 30,paddingRight: 25,height: 30)
        
        
        cardView.addSubview(priceName)
        priceName.anchor(top:symbolName.bottomAnchor,left: cardView.leftAnchor ,paddingTop: 30,paddingLeft: 25,height: 30)
        
        cardView.addSubview(priceNameLabel)
        priceNameLabel.anchor(top:symbolLabel.bottomAnchor ,right: cardView.rightAnchor,paddingTop: 30,paddingRight: 25,height: 30)
        
        cardView.addSubview(priceChangeName)
        priceChangeName.anchor(top: priceName.bottomAnchor,left: cardView.leftAnchor ,paddingTop: 30,paddingLeft: 25,height: 30)
        
        cardView.addSubview(priceChangeNameLabel)
        priceChangeNameLabel.anchor(top: priceNameLabel.bottomAnchor ,right: cardView.rightAnchor,paddingTop: 30,paddingRight: 25,height: 30)
        
        cardView.addSubview(barChart)
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
        
        activityIndicator.centerX(inView: barChart)
        activityIndicator.centerY(inView: barChart)
        
        viewLogoCompany.addSubview(activityImageIndicator)
        
        activityImageIndicator.centerX(inView: viewLogoCompany)
        activityImageIndicator.centerY(inView: viewLogoCompany)
       
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

