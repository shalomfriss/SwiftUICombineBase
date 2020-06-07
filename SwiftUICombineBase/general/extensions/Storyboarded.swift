//
//  Storyboarded.swift
//  SwiftUICombineBase
//
//  Created by Shalom Friss on 5/25/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation
import UIKit


/// This storyboard for for UIViewControllers for easy instantiation
protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    /// Instantiate a view controller from a storyboard
    /// - Parameter storyboardName: String
    /// - Returns: UIViewController
    static func instantiate(storyboardName:String = "Main") -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
