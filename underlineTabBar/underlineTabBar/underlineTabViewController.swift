//
//  underlineTabViewController.swift
//  underlineTabBar
//
//  Created by apple on 12/01/21.
//  Copyright © 2021 apple. All rights reserved.
//

import UIKit

class underlineTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // For underline tab bar
        
                tabBar.selectionIndicatorImage = UIImage().createSelectionIndicator(color: .green, size: CGSize(width: tabBar.frame.width/CGFloat(tabBar.items!.count), height:  tabBar.frame.height), lineWidth: 3.0)
        
       
        // For Shadow color in tab bar
        
                  tabBar.layer.shadowColor = UIColor.lightGray.cgColor
                  tabBar.layer.shadowOpacity = 0.5
                  tabBar.layer.shadowOffset = CGSize.zero
                  tabBar.layer.shadowRadius = 5
                  self.tabBar.layer.borderColor = UIColor.clear.cgColor
                  self.tabBar.layer.borderWidth = 0
                  self.tabBar.clipsToBounds = false
                  self.tabBar.backgroundColor = UIColor.white
                  UITabBar.appearance().shadowImage = UIImage()
                  UITabBar.appearance().backgroundImage = UIImage()
        
        

    }
    
}
extension UIImage {
    func createSelectionIndicator(color: UIColor, size: CGSize, lineWidth: CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(x: 0, y: size.height - lineWidth, width: size.width, height: lineWidth))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
