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
        
        let arrayLayer = arrayShapLayer(stepLine: 10)
        myLine(arrLayer: arrayLayer)
    }
    
    func myLine(arrLayer: [CAShapeLayer]) {
        
     arrLayer.forEach{ $0.strokeColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
                       layer.addSublayer($0)
                         }
    }
    
    func pathLine(doubleX:Double) -> UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x:doubleX,
                              y: 0.0))
        path.addLine(to: CGPoint(x: CGFloat(doubleX),
                                 y: self.frame.size.height))
        
        path.close()
        return path
    }
    
    func arrayShapLayer(stepLine: Int) ->[CAShapeLayer]{
        var shapeLayerArray = [CAShapeLayer]()
        let doubleNumers = [Double]().createDoubleArray(n: stepLine)
        let lineX = self.frame.size.width/CGFloat(stepLine)
        let shapeArray = doubleNumers.map{$0 * Double(lineX)}

        shapeArray.forEach{
               let shapeLayer = CAShapeLayer()
               shapeLayer.path = pathLine(doubleX: Double($0)).cgPath
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
    /**
     
    Double Array extension.
    Creates an array of type Double with step 1.0 and count n
        // iOS
          let arr = createDoubleArray(n: 10)
     
        //  [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0]     
        - parameter n: n - array count
    */
   
//    func createDoubleArray (n: Int) -> [Double] {
//        var dArray = [Double]()
//        var nDouble = Double(n)
//        while nDouble > 0 {
//           var arrDouble = 0.0
//            dArray.append(arrDouble)
//            nDouble -= 1
//            arrDouble += 1
//        }
//        return dArray
//    }
  
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
