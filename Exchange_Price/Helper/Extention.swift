//
//  Extention.swift
//  Exchange_Price
//
//  Created by Sergey on 22.11.2020.
//

import Foundation
import UIKit

extension UIColor {
static let offWhite = UIColor.init(red: 225/255, green: 225/255, blue: 235/255, alpha: 1)
}
extension Array {
    /**
     
    Double Array extension.
    Creates an array of type Double with step 1.0 and count n
     
        // iOS
          let arr = createDoubleArray(n: 10)
     
        //  [0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0]
     
        - parameter n: n - array count
    */
    func createDoubleArray (n: Int) -> [Double] {
        var dArray = [Double]()
        var nDouble = Double(n)
        var arrDouble = 0.0
        
        while nDouble > 0 {
           
            dArray.append(arrDouble)
            nDouble -= 1
            arrDouble += 1
            print(dArray)
        }
        return dArray
    }
}
