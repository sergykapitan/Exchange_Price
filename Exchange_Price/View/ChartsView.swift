//
//  ChartsView.swift
//  Exchange_Price
//
//  Created by Sergey on 29.11.2020.
//

import Foundation
import UIKit


class ChartsView: UIView {
    
    var path: UIBezierPath!
     
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    override func draw(_ rect: CGRect) {
        
        let arrayLayer = arrayShapLayer()
        myLine(arrLayer: arrayLayer)
    }
    
    func myLine(arrLayer:[CAShapeLayer]) {
        arrLayer.forEach({ (i) in
            let shapeLayer = i
            shapeLayer.strokeColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            self.layer.addSublayer(shapeLayer)
        })
    }
    func chartsLine(doubleX:Double) -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x:doubleX,
                              y: 0.0))
        path.addLine(to: CGPoint(x: CGFloat(doubleX),
                                 y: self.frame.size.height))
        
        path.close()
        return path
    }
    
    func arrayShapLayer() ->[CAShapeLayer]{
        var shapeLayerArray = [CAShapeLayer]()
        let stepLine = 10
        let arr = Array(0...stepLine)
        let lineX = self.frame.size.width/CGFloat(stepLine)
        let shapeArray = arr.map{$0 * Int(lineX)}
     
        
        for i in shapeArray {
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = chartsLine(doubleX: Double(i)).cgPath
            shapeLayerArray.append(shapeLayer)
        }
        
        return shapeLayerArray
    }

    
    func createTextLayer() {
        let textLayer = CATextLayer()
        textLayer.string = "WOW!\nThis is text on a layer!"
        textLayer.foregroundColor = UIColor.white.cgColor
        textLayer.font = UIFont(name: "Avenir", size: 15.0)
        textLayer.fontSize = 15.0
        textLayer.alignmentMode = CATextLayerAlignmentMode.center
        textLayer.backgroundColor = UIColor.orange.cgColor
        textLayer.frame = CGRect(x: 0.0,
                                 y: self.frame.size.height/2 - 30.0,
                                 width: self.frame.size.width,
                                 height: 60.0)
        textLayer.contentsScale = UIScreen.main.scale
        self.layer.addSublayer(textLayer)
    }
    
    
    
    
    
    
    
    
    
    
    
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
