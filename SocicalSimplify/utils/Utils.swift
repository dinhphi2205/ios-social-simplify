//
//  Utils.swift
//  SocicalSimplify
//
//  Created by Phi Mai on 26/12/2023.
//

import Foundation

func randomUserName() -> String {
    var a: [String] = ["John","Peter", "Kenny", "Jack", "Rose", "Kenvin", "Devin", "David"];
    var b: [String] = ["Kim", "Wang", "Chen", "Nguyen", "Carlos", "Federer", "Tevez"];
    
    let indexA = Int(arc4random_uniform(UInt32(a.count)))
    let indexB = Int(arc4random_uniform(UInt32(b.count)))
    
    return "\(a[indexA]) \(b[indexB])"
}
